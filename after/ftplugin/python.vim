setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal nosmartindent
setlocal expandtab
setlocal number
setlocal omnifunc=pythoncomplete#Complete
setlocal foldmethod=indent       " More indent means a higher fold level

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

" jedi-vim
"let g:jedi#goto_assignments_command = '<F2>'
"let g:jedi#rename_command = ''

let g:ultisnips_python_style = "sphinx"
