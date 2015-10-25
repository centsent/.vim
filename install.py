#!/usr/bin/env python

import shutil
from os import path

# 1. move ~/.vim to ~/.vim.bak
# 2. move ~/.vimrc to ~/.vimrc.bak
# 3. clone the git repo
# 4. vundle init
# 5. install vim plugins
# 6. install tern-for-vim

home = path.expanduser('~')
vimSource = '%s/test' % (home)
vimBakDest = '%s.bak' % (vimSource)
vimrcSource = '%s/.vimrc' % (home)
vimrcBakDest = '%s.bak' % (vimrcSource)

shutil.move(vimSource, vimBakDest)
shutil.move(vimrcSource, vimrcBakDest)
