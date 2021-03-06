#!/usr/bin/env python

try:
    from .log import log
except SystemError:
    from log import log

__all__ = [
    'Code',
    'SeperatorStyle',
    'Rofi',
    'rofi',
    'Item',
    'View'
]

KB_CUSTOM_NUM = 19
KB_CUSTOM_CODE_BEG = 10
KB_CUSTOM_CODE_END = KB_CUSTOM_CODE_BEG + KB_CUSTOM_NUM - 1


class Code:
    SELECT = 0
    CANCEL = 1
    KB = list(range(KB_CUSTOM_CODE_BEG, KB_CUSTOM_CODE_END - 1))
    # kb1..kb19 => KB[0..18] -> [10..28]


class SeperatorStyle:
    NONE = 'none'
    SOLID = 'solid'
    DASH = 'dash'


def parse_options(opts):
    for whitespace in '\n ':
        opts = opts.replace(whitespace, '')
    opts = opts.replace('-', '_')
    lst = opts.split(',')
    return [o for o in lst if o]


class Rofi:

    # rofi options generated by following shell command:
    # rofi -dump-xresources | sed -n 's/^rofi.\([^:]*\):.*$/\1/p' | tr '\n' ','
    VALID_OPTIONS = parse_options('''
    modi,opacity,width,lines,columns,font,fg,bg,fg-active,fg-urgent,hlfg-active,hlfg-urgent,bg-active,bg-urgent,hlbg-active,hlbg-urgent,bgalt,hlfg,hlbg,bc,color-enabled,color-normal,color-urgent,color-active,color-window,bw,location,padding,yoffset,xoffset,fixed-num-lines,terminal,ssh-client,ssh-command,run-command,run-list-command,run-shell-command,disable-history,levenshtein-sort,case-sensitive,sidebar-mode,lazy-filter-limit,eh,auto-select,parse-hosts,parse-known-hosts,combi-modi,fuzzy,glob,regex,tokenize,m,line-margin,filter,separator-style,hide-scrollbar,markup-rows,fullscreen,fake-transparency,dpi,threads,scrollbar-width,pid,kb-primary-paste,kb-secondary-paste,kb-clear-line,kb-move-front,kb-move-end,kb-move-word-back,kb-move-word-forward,kb-move-char-back,kb-move-char-forward,kb-remove-word-back,kb-remove-word-forward,kb-remove-char-forward,kb-remove-char-back,kb-accept-entry,kb-accept-custom,kb-accept-entry-continue,kb-mode-next,kb-mode-previous,kb-toggle-case-sensitivity,kb-delete-entry,kb-row-left,kb-row-right,kb-row-up,kb-row-down,kb-row-tab,kb-page-prev,kb-page-next,kb-row-first,kb-row-last,kb-row-select,kb-cancel,kb-custom-1,kb-custom-2,kb-custom-3,kb-custom-4,kb-custom-5,kb-custom-6,kb-custom-7,kb-custom-8,kb-custom-9,kb-custom-10,kb-custom-11,kb-custom-12,kb-custom-13,kb-custom-14,kb-custom-15,kb-custom-16,kb-custom-18,kb-custom-17,kb-custom-19,kb-screenshot,kb-toggle-sort,key-window,key-run,key-ssh,
    ''' + '''
    dmenu,sep,p,selected-row,l,i,a,u,only-match,no-custom,format,select,mesg,normal-window,dump,input,
    e
    ''')

    def __init__(self):
        self.defaults = {
            'dmenu': True,
            'i': True,
            'p': ''
        }
        self.aliases = {
            'prompt': 'p',
            'msg': 'mesg',
            'active': 'a',
            'urgent': 'u',
        }
        for i in range(1, KB_CUSTOM_NUM + 1):
            self.aliases['kb{}'.format(i)] = 'kb_custom_{}'.format(i)

    def add_alias(self, alias, aliased):
        self.aliases[alias] = aliased

    def __getattr__(self, name):
        log('Rofi.get', name)
        if 'defaults' in self.__dict__:
            defaults = self.__dict__['defaults']
            if 'aliases' in self.__dict__:
                aliases = self.__dict__['aliases']
                if name in aliases:
                    name = aliases[name]
            if name in defaults:
                return defaults[name]
        return object.__getattribute__(self, name)

    def __setattr__(self, name, value):
        log('Rofi.set', name, value)
        if 'defaults' in self.__dict__:
            defaults = self.__dict__['defaults']
            if name in self.VALID_OPTIONS:
                defaults[name] = value
                return
            elif 'aliases' in self.__dict__:
                aliases = self.__dict__['aliases']
                if name in aliases:
                    name = aliases[name]
                    log('->', name, value)
                    defaults[name] = value
                    return
        object.__setattr__(self, name, value)

    def __delattr__(self, name):
        log('Rofi.del', name)
        if 'defaults' in self.__dict__:
            defaults = self.__dict__['defaults']
            if name in self.VALID_OPTIONS:
                del defaults[name]
                return
            elif 'aliases' in self.__dict__:
                aliases = self.__dict__['aliases']
                if name in aliases:
                    name = aliases[name]
                    log('->', name)
                    del defaults[name]
                    return
        object.__delattr__(self, name)

    @staticmethod
    def _option_to_str(option):
        lst = []
        for k, v in option.items():
            k = k.replace('_', '-')
            if isinstance(v, bool):
                if v:
                    lst.append('-{}'.format(k))
                else:
                    lst.append('-no-{}'.format(k))
            elif isinstance(v, list):
                if v:
                    lst.append('-{} "{}"'.format(k, ','.join(map(str, v))))
            else:
                if v is not None:
                    lst.append('-{} "{}"'.format(k, v))
        return ' '.join(lst)

    def _option_add_default(self, option):
        added = self.defaults.copy()
        added.update(option)
        return added

    def _option_unaliased(self, option):
        unaliased = {}
        # copy not alias key
        for k, v in option.items():
            if k not in self.aliases:
                unaliased[k] = v
        # set alias key
        for k, v in option.items():
            if k in self.aliases:
                k = self.aliases[k]
                if k not in unaliased:
                    unaliased[k] = v
        return unaliased

    def __call__(self, inps, prompt=None, msg=None, **option):
        log('call:')
        if prompt is not None:
            option['prompt'] = prompt
        if msg:
            option['msg'] = msg
        log('  option:', option)
        option = self._option_unaliased(option)
        log('  option:', option)
        option = self._option_add_default(option)
        log('  option:', option)
        cmd = 'rofi {}'.format(self._option_to_str(option))
        log('  cmd:', cmd)
        if not isinstance(inps, str) and hasattr(inps, '__iter__'):
            inps = option.get('sep', '\n').join(map(str, inps))
        # log('  inps:', repr(inps))
        from subprocess import Popen, PIPE
        with Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE) as proc:
            inps = inps.encode('u8')
            outs, _ = proc.communicate(inps)
        outs = outs.decode('u8')[:-1]
        code = proc.returncode
        return outs, code

    def index(self, lst, *args, **options):
        sep = '\n'
        options['format'] = 'i{}s'.format(sep)
        outs, code = self(lst, *args, **options)
        if code == Code.CANCEL:
            return -1, outs, code
        else:
            idx, sel = outs.split(sep, 1)
            return int(idx), sel, code

    def menu(self, menu, texts, prompt=None, **options):
        sep = '---------'
        action = {v: k for k, v in texts.items()}
        lst = [sep if i == '|' else texts[i]
               for i in menu.replace('|', ',|,').split(',')]
        while 1:
            sel, code = self(lst, prompt, **options)
            if code != Code.SELECT:
                return None
            if sel == sep:
                continue
            if sel not in action:
                continue
            return action[sel]

    def yesno(self, prompt=None, choice='ny', **options):
        texts = {
            'y': 'Yes',
            'n': 'No',
            'c': 'Cancel'
        }
        menu = ','.join(choice)
        act = self.menu(menu, texts, prompt, **options)
        if act is None:
            return None
        elif act == 'y':
            return True
        else:
            return False

    def input(self, prompt=None, holder='', **options):
        sel, code = self([], prompt, filter=holder, **options)
        if code == Code.CANCEL:
            return ''
        return sel

    def msg(self, msg, **options):
        self([], e=msg, **options)


rofi = Rofi()


class BindedMethod:

    def __init__(self, event, func):
        self.event = event
        self.func = func


class Item:

    NORMAL = 0
    ACTIVE = 1
    URGENT = 2

    def __init__(self):
        self.idx = -1
        self.state = Item.NORMAL


class View:

    VALID_EVENTS = 'close,show,select,input'.split(',')

    def __new__(cls, *args, **kwds):
        ins = super().__new__(cls)
        ins._handlers = {}
        ins._custom_keys = set()
        for k, v in cls.__dict__.items():
            if isinstance(v, BindedMethod):
                ins._bind_event(v.event, v.func)
                ins.__dict__[k] = v.func
        return ins

    def __init__(self, lst=None, prompt=''):
        self.rofi = Rofi()
        self.lst = list(map(str, lst)) if lst else []
        self.prompt = prompt
        self.running = False

    def __getattr__(self, name):
        log('View.get', name)
        if 'rofi' in self.__dict__:
            rofi = self.__dict__['rofi']
            return rofi.__getattr__(name)
        return object.__getattribute__(self, name)

    def __setattr__(self, name, value):
        log('View.set', name, value)
        if 'rofi' in self.__dict__:
            rofi = self.__dict__['rofi']
            if name in rofi.VALID_OPTIONS or name in rofi.aliases:
                rofi.__setattr__(name, value)
                return
        object.__setattr__(self, name, value)

    def __delattr__(self, name):
        log('View.del', name)
        if 'rofi' in self.__dict__:
            rofi = self.__dict__['rofi']
            if name in rofi.VALID_OPTIONS or name in rofi.aliases:
                rofi.__delattr__(name)
                return
        object.__delattr__(self, name)

    def _bind_event(self, es, f):
        if not isinstance(es, list):
            es = [es]
        for e in es:
            self._handlers[e] = f
            if e not in self.VALID_EVENTS:
                self._custom_keys.add(e)

    def _dispatch(self, event, *args, **kwds):
        if event in self._handlers:
            self._handlers[event](self, *args, **kwds)

    def bind(first, *args):
        if isinstance(first, View):
            if len(args) == 1:
                e = args[0]

                def decorator(f):
                    first._bind_event(e, f)
                    return f
                return decorator
            else:
                e, f = args
                first._bind_event(e, f)
        else:
            e = first

            def decorator(f):
                return BindedMethod(e, f)
            return decorator

    def get_list(self):
        return self.lst

    def _get_key_option(self):
        return {'kb{}'.format(i + 1): k for i, k
                in enumerate(self._custom_keys)}

    def show(self, lst=None, **options):
        self._dispatch('show')
        lst = lst if lst is not None else self.get_list()
        options.update(self._get_key_option())
        return self.rofi.index(lst, **options)

    def close(self):
        self.running = False
        self._dispatch('close')

    def run(self):
        self.running = True
        while self.running:
            idx, sel, code = self.show()
            if code == Code.CANCEL:
                self.close()
            elif code == Code.SELECT:
                if idx != -1:
                    self.selected_row = idx
                    self._dispatch('select', idx, sel)
                else:
                    self._dispatch('input', sel)
            elif code in Code.KB:
                log('key', code - Code.KB[0])
                c = code - Code.KB[0]
                if c < len(self._custom_keys):
                    if idx != -1:
                        self.selected_row = idx
                    key = list(self._custom_keys)[c]
                    self._dispatch(key, idx, sel)


if __name__ == "__main__":
    rofi.i = False
    print(rofi.defaults)
    print(rofi([1, 2], 'Test:', msg="This is a <i><b><u>message</u></b></i>"))
    print(rofi.yesno('Are you OK?'))
    print(rofi.input('How are you?', "I'm fine, thank you."))
    rofi.msg("This is a message\nwith\nmulti\nlines")

    v = View([1, 2], 'View:')

    @v.bind('Control+equal')
    def f(view, idx, sel):
        print(view, idx, sel)

    v.bind('select', print)
    v.bind('Alt+a', print)
    v.run()
