#!/usr/bin/env python

import json

from path import Path

try:
    from .log import log
except:
    from log import log

__all__ = ['config']


class Config:

    def __init__(self, p, cfg, auto):
        self._path = Path(p).expand()
        for k, v in cfg.__dict__.items():
            if not k.startswith('_'):
                self.__setattr__(k, v)
        self._loaded = False
        if auto:
            self._load()
            import atexit
            atexit.register(self._save)

    def _load(self):
        log('loading')
        p = self._path
        if not p.exists():
            return
        with p.open() as f:
            try:
                d = json.load(f)
            except json.decoder.JSONDecodeError:
                print('Cannot load config from {}'.format(p))
                return
        for k, v in d.items():
            if k in self.__dict__:
                o = self.__dict__[k]
                if isinstance(o, dict):
                    o.update(v)
                else:
                    self.__dict__[k] = v
        self._loaded = True

    def _save(self):
        log('saving')
        p = self._path
        d = {}
        for k, v in self.__dict__.items():
            if not k.startswith('_') and not hasattr(v, '__call__'):
                d[k] = v
        if not p.exists():
            p.parent.mkdir_p()
            p.touch()
        with p.open('w') as f:
            json.dump(d, f, indent=4)

    def __enter__(self):
        if not self._loaded:
            self._load()
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        self._save()


def config(path, auto=True):
    def decorator(cls):
        return Config(path, cls, auto)
    return decorator


if __name__ == "__main__":
    @config('/tmp/python-lib-config-test')
    class C:
        foo = 'bar'
    with C:
        C.foo = 'foo'
    with C:
        assert C.foo == 'foo'
