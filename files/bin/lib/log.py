#!/usr/bin/env python

__all__ = [
    'disable_log',
    'enable_log',
    'log'
]

DEBUG = True

def disable_log():
    global DEBUG
    DEBUG = False

def enable_log():
    global DEBUG
    DEBUG = True


def log(*args, **kwds):
    global DEBUG
    if DEBUG:
        print(*args, **kwds)


if __name__ == "__main__":
    log('log', 1)
    disable_log()
    log('log', 2)
    enable_log()
    log('log', 3)
