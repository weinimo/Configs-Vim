let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt

" goto definition with F2
map <F2> <C-]>

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<Enter>

" Build
map <F6> :make<Enter>

" Rebuild (Shift-F6)
map <S-F6> :make clean all<Enter>

" recreate tags file with F8
map <F8> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<Enter>
