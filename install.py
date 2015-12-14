#!/usr/bin/env python

import shutil
from os import path
from subprocess import call

HOME = path.expanduser('~')

GIT = 'git'
CLONE = 'clone'

# vim
VIM_SOURCE = '%s/.vim' % (HOME)
VIMRC_SOURCE = '%s/.vimrc' % (HOME)
VIM_BAK_DEST = '%s.bak' % (VIM_SOURCE)
VIMRC_BAK_DEST = '%s.bak' % (VIMRC_SOURCE)
VIMRC_SOFT_LINK = ['ln', '-s', '%s/.vim/.vimrc' % (HOME), VIMRC_SOURCE]

# repo
MY_REPO = 'https://github.com/centsent/vimrc.git'
CLONE_REPO = [GIT, CLONE, MY_REPO, VIM_SOURCE]

def soft_link_vimrc():
    call(VIMRC_SOFT_LINK)


def main():
    # move ~/.vim to ~/.vim.bak
    if path.exists(VIM_SOURCE):
        shutil.move(VIM_SOURCE, VIM_BAK_DEST)
    # move ~/.vimrc to ~/.vimrc.bak
    if path.exists(VIMRC_SOURCE):
        shutil.move(VIMRC_SOURCE, VIMRC_BAK_DEST)
    # clone the git repo
    call(CLONE_REPO)
    # soft link to vimrc
    soft_link_vimrc()
    # TODO install YouCompleteMe
    # TODO install tern-for-vim

if __name__ == '__main__':
    main()
