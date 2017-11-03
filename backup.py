#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
backup.py - backup dotfiles

usage:
    backup.py
"""
import platform

from docopt import docopt

import sys
import os
from shutil import copyfile
from os.path import join as pj


batches = {
    'batch': {
        'labels': ['work'],
        'files': [
            '.vimrc',
            '.vim/plugins.vim',
            '.vim/funcs.vim',
            '.zshrc',
            '.gitconfig',
            '.config/awesome/rc.lua',
            '.config/awesome/theme.lua',
        ]
    },
    'ledge': {
        'labels': ['home'],
        'files': []
    },
}

def exitUnexistNode(nodeName):
    print("{} not found in batches. availiable: {}."
          .format(node, ", ".join(batches.keys())))
    sys.exit(0)

if __name__ == "__main__":
    args = docopt(__doc__, version="1.0")
    node = platform.node()
    if node not in batches.keys():
        exitUnexistNode(node)

    os.makedirs(node, exist_ok=True)
    for flname in batches[node]['files']:
        d = pj(node, os.path.dirname(flname))
        if not os.path.exists(d):
            os.makedirs(d)

        copyfile(pj(os.path.expanduser('~'), flname), pj(node, flname))
