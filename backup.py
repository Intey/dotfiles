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

import conf


def exitUnexistNode(nodeName, batches):
    print("{} not found in batches. availiable: {}."
          .format(node, ", ".join(batches)))
    sys.exit(0)


if __name__ == "__main__":
    batches = conf.batches
    args = docopt(__doc__, version="1.0")
    node = platform.node()
    print('going to backup {}'.format(node) )
    if node not in batches.keys():
        exitUnexistNode(node, batches.keys())

    os.makedirs(node, exist_ok=True)
    for flname in batches[node]['files']:
        expanded = os.path.expanduser(flname)
        flname = flname.split('/', 1)[1]
        d = pj(node, os.path.dirname(flname))
        if not os.path.exists(d):
            os.makedirs(d)
        src, dst = expanded, pj(node, flname)
        print("backup {} to {}".format(src, dst))
        copyfile(src, dst)
