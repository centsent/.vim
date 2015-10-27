#!/usr/bin/env python

import shutil
from os import path
from subprocess import call

HOME = path.expanduser('~')

GIT = 'git'
CLONE = 'clone'

# vundle
VUNDLE_HOME = '%s/.vim/bundle/Vundle.vim' % (HOME)
VUNDLE_HOME_GIT = '%s/.git' % (VUNDLE_HOME)

# vim
VIM_SOURCE = '%s/.vim' % (HOME)
VIMRC_SOURCE = '%s/.vimrc' % (HOME)
VIM_BAK_DEST = '%s.bak' % (VIM_SOURCE)
VIMRC_BAK_DEST = '%s.bak' % (VIMRC_SOURCE)
VIMRC_SOFT_LINK = ['ln', '-s', '%s/.vim/.vimrc' % (HOME), VIMRC_SOURCE]

# repo
VUNDLE_REPO = 'https://github.com/VundleVim/Vundle.vim.git'
CLONE_VUNDLE_REPO = [GIT, CLONE, VUNDLE_REPO, VUNDLE_HOME]
MY_REPO = 'https://github.com/centsent/vimrc.git'
CLONE_REPO = [GIT, CLONE, MY_REPO, VIM_SOURCE]


def vundle_init():
    # check ~/.vim/bundle/Vundle.vim
    if not path.exists(VUNDLE_HOME):
        call(['mkdir', '-p', VUNDLE_HOME])

    # check ~/.vim/bundle/Vundle.vim
    if not path.exists(VUNDLE_HOME_GIT):
        call(CLONE_VUNDLE_REPO)
        print '''
        Read about vim configuration for vundle at
        https://github.com/VundleVim/Vundle.vim
        '''


def vundle_install_plugin():
    call(['vim', '-c', '"execute \"PluginInstall\" | qa"'])


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
    # vundle init
    vundle_init()
    # install vim plugins
    vundle_install_plugin()
    # soft link to vimrc
    soft_link_vimrc()
    # TODO install YouCompleteMe
    # TODO install tern-for-vim

if __name__ == '__main__':
    main()
