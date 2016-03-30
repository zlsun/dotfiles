#!/usr/bin/env python

import json

from path import Path

try:
    from .log import log
except:
    from log import log

__all__ = ['config']


class Config:

    def __init__(self, p, proto, auto, dev):
        self._path = Path(p).expand()
        for k, v in proto.__dict__.items():
            if not k.startswith('_'):
                self.__setattr__(k, v)
        self._dev = dev
        self._loaded = False
        if auto:
            self._load()
            import atexit
            atexit.register(self._save)

    def _from_dict(self, d):
        for k, v in d.items():
            if k in self.__dict__:
                o = self.__dict__[k]
                if isinstance(o, dict):
                    o.update(v)
                else:
                    self.__dict__[k] = v

    def _to_dict(self):
        d = {}
        for k, v in self.__dict__.items():
            if not k.startswith('_') and not hasattr(v, '__call__'):
                d[k] = v
        return d

    def _load(self):
        if self._dev:
            return
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
        self._from_dict(d)
        self._loaded = True

    def _save(self):
        if self._dev:
            return
        log('saving')
        p = self._path
        if not p.exists():
            p.parent.mkdir_p()
            p.touch()
        with p.open('w') as f:
            json.dump(self._to_dict(), f, indent=4)

    def __enter__(self):
        if not self._loaded:
            self._load()
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        self._save()


def config(path, auto=True, dev=False):
    def decorator(cls):
        return Config(path, cls, auto, dev)
    return decorator


if __name__ == "__main__":
    @config('/tmp/python-lib-config-test')
    class C:
        foo = 'bar'
    with C:
        C.foo = 'foo'
    with C:
        assert C.foo == 'foo'
