setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
"setlocal nosmartindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal autoindent
setlocal expandtab
setlocal number
setlocal omnifunc=pythoncomplete#Complete

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" No quickfix window for pyflakes
let g:pyflakes_use_quickfix = 0

" RopeVim refactoring tools (also renames all references)
map <F2> :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Fix for this bug: https://github.com/scrooloose/syntastic/issues/814
if exists('+shellslash')
  set noshellslash
endif
