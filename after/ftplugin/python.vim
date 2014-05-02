setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal nosmartindent
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

" jedi-vim
"let g:jedi#goto_assignments_command = '<F2>'
"let g:jedi#rename_command = ''

" pymode_rope's completion abilities are not the best
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_completion_bind = ''
" Let jedi-vim do the pydoc stuff
let g:pymode_doc = 0
" pymode disable run script
let g:pymode_run = 0
let pymode_run_bind = ''
" pymode lint checkers
let g:pymode_lint_checkers = ['pep8', 'mccabe', 'pylint']
let g:pymode_lint_ignore = "E501"
" pymode rope integration
"let g:pymode_rope_goto_definition_bind = '<F2>'
"let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_rename_bind = '<leader>r'
