" Key Bindings
" Mappings for brackets and quotes
" Commands starting with inoremap work only insert mode and commands starting with nnoremap work only in normal mode in vim.
inoremap {<CR> {<CR>}<Esc>O<Tab>
" If you press { and newline character, then the it will get printed like this:- { \n \t | \n } where | represents the cursor.
inoremap (<CR> (<CR>)<Esc>O<Tab>
" If you press ( and newline character, then the it will get printed like this:- ( \n \t | \n ) where | represents the cursor.
inoremap [<CR> [<CR>]<Esc>O<Tab>
" If you press [ and newline character, then the it will get printed like this:- [ \n \t | \n ] where | represents the cursor.
inoremap { {}<Left>
" If you press {, then the it will get printed like this:- {|} where | represents the cursor.
inoremap ( ()<Left>
" If you press (, then the it will get printed like this:- (|) where | represents the cursor.
inoremap [ []<Left>
" If you press [, then the it will get printed like this:- [|] where | represents the cursor.
inoremap " ""<Left>
" If you press ", then the it will get printed like this:- "|" where | represents the cursor.
inoremap ' ''<Left>
" If you press ', then the it will get printed like this:- '|' where | represents the cursor.
inoremap ` ``<Left>
" If you press `, then the it will get printed like this:- `|` where | represents the cursor.
inoremap {} {}
" If you press {}, then it will get printed like this:- {}| where | represents the cursor.
inoremap () ()
" If you press (), then it will get printed like this:- ()| where | represents the cursor.
inoremap [] []
" If you press [], then it will get printed like this:- []| where | represents the cursor.
inoremap "" ""
" If you press "", then it will get printed like this:- ""| where | represents the cursor.
inoremap '' ''
" If you press '', then it will get printed like this:- ''| where | represents the cursor.
inoremap `` ``
" If you press ``, then it will get printed like this:- ``| where | represents the cursor.
" Mappings for tabs and space conversions
" To convert spaces to tabs you press tab three times and hit enter and to convert tabs to spaces, you press space three times and hit enter.
nnoremap <Tab><Tab><Tab> :set noet\|retab!<CR>
" Pressing tab three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter.
nnoremap <Space><Space><Space> :set et\|retab<CR>
" Pressing space three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter
nnoremap find1 :1,$s/    /\t/g
" search regex for special characters also
nnoremap find2 :n1,n2s///g
" search regex for strings only
nnoremap find3 :%s///g
" search regex for strings only without line numbers
" Filetype maps
au BufEnter,BufNew,BufNewFile *.py inoremap :<CR> :<CR><Tab>
" This is a auto-command which gets executed for python files automatically. If you press :\n, it will get printed like this:- :\n\t| where | represents the cursor.
au BufEnter,BufNew,BufNewFile *.php inoremap <? <?php<CR>?><Esc>O<Tab>|inoremap<?<Space> <?
" This is a auto-command which gets executed for php files automatically. If you press <?\n, it will get printed like this:- <?php \n \t | \n ?> where | represents the cursor.
" autoclose html tags mapping
:set omnifunc=htmlcomplete#CompleteTags
" This calls the builtin function to complete html tags.
:au FileType html,xml,xsl inoremap <C-_> <Esc>A<Enter></<C-x><C-o><Esc>O<Tab>|inoremap <C-_><C-_> <Esc>A</<C-x><C-o><Esc>vit<Esc>i|inoremap <C-_><C-_><C-_> <Esc>A</<C-x><C-o><Esc>vat<Esc>a|inoremap < <><Left>|inoremap </ </><Left>|inoremap <% <%<Space><Space>%><Left><Left><Left>|inoremap <%= <%=<Space><Space>%><Left><Left><Left>|inoremap <> <>|inoremap </> </>|inoremap <%<Space> <%|inoremap <%=<Space> <%=|inoremap <<Space> <|inoremap </<Space> </|inoremap <%=<Space><Space>%> <%=<Space><Space>%>|inoremap <%<Space><Space>%> <%<Space><Space>%>
" If you type a html opening tag like the following <html>| or <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _>, then it will get printed like this:- <html> \n \t | \n </html> where | represents the cursor.
" If you type a html opening tag like the following <html>| or <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _><ctrl + _>, then it will get printed like this:- <html>|</html> where | represents the cursor.
" If you type a html opening tag like the following <html>| or <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _><ctrl + _><ctrl + _>, then it will get printed like this:- <html></html>| where | represents the cursor.
" If you press <, then the it will get printed like this:- <|> where | represents the cursor.
" If you press </, then the it will get printed like this:- </|> where | represents the cursor.
" If you press <%, then it will get printed like this:- <% | %> where | represents the cursor.
" If you press <%=, then it will get printed like this:- <%= | %> where | represents the cursor.
" If you press <>, then it will get printed like this:- <>| where | represents the cursor.
" If you press </>, then it will get printed like this:- </>| where | represents the cursor.
" If you press <%\s, then it will get printed like this:- <%| where | represents the cursor.
" If you press <%=\s, then it will get printed like this:- <%| where | represents the cursor.
" If you press <\s, then the it will get printed like this:- < where | represents the cursor.
" If you press </\s, then the it will get printed like this:- </ where | represents the cursor.
" If you press <%=  %>, then it will get printed like this:- <%=  %> where | represents the cursor.
" If you press <%  %>, then it will get printed like this:- <%  %> where | represents the cursor.
" New Tabs config
nnoremap <Tab>c :tabnew<Space>
" Used to create new tab
nnoremap <Tab>n :tabn<Space>
" Used to go to the tab with the number specified
nnoremap <Tab><up> :tabr<CR>
" To go to the first tab
nnoremap <Tab><down> :tabl<CR>
" To go to the last tab
nnoremap <Tab><left> :tabp<CR>
" To go to the previous tab
nnoremap <Tab><right> :tabn<CR>
" To go to the next tab
nnoremap <C-c><C-c> :split<Space>
" Used to create a horizontal split in vim
nnoremap <C-c> :vsplit<Space>
" Used to create a vertical split in vim
nnoremap <C-c><left> <C-w>h
" Used to move to the left pane in vim
nnoremap <C-c><right> <C-w>l
" Used to move to the right pane in vim
nnoremap <C-c><up> <C-w>k
" Used to move to the upper pane in vim
nnoremap <C-c><down> <C-w>j
" Used to move to the lower pane in vim
:au BufEnter,BufNewFile,BufNew *.js imap =<CR> =><Space>{<CR>|inoremap :<CR> :<CR><Tab>
" Used in js files to print = as <Space>=><Space>{\n\t|\n} and :\n will be printed as :\n\t
au BufNewFile,BufNew,BufRead *.ejs set filetype=html
" Used to set html hightlighting for ejs files.
function! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfunction
au BufWritePre * call <SID>StripTrailingWhitespaces()
" Used to remove trailing spaces in a file.
autocmd BufWritePre * :%s#\($\n\s*\)\+\%$##e
" Used to remove empty lines at last in a file before saving in vim
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby vnoremap <F2> :norm i#<Space><CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala vnoremap <F2> :norm i//<Space><CR>
au BufEnter,BufNew,BufNewFile *.vim vnoremap <F2> :s/^/" <CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby nnoremap <F2> V:norm i#<Space><CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala nnoremap <F2> V:norm i//<Space><CR>
au BufEnter,BufNew,BufNewFile *.vim nnoremap <F2> V:s/^/" <CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby inoremap <F2> <Esc>V:norm i#<Space><CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala inoremap <F2> <Esc>V:norm i//<Space><CR>
au BufEnter,BufNew,BufNewFile *.vim inoremap <F2> <Esc>V:s/^/" <CR>
" Used to put comments in a file.
vnoremap <C-S-c> :'<,'>w !xclip -selection clipboard<CR><CR>
" This is a special mapping for sending the selected text to the system clipboard
:filetype off
:filetype plugin off
:filetype indent off
" Disable filetype plugins for custom config to work perfectly.
set mouse=a
" sets mouse mode to on
set title
" sets title
set number
" sets numberline for the text editor
set laststatus=2
" sets statusline
set cursorcolumn
" highlights the vertical line in which the cursor is.
set cursorline
" highlights the horizontal line in which the cursor is.
set incsearch
" starts searching for the word when you enter the first character of the string
set hlsearch
" setting searchlist
set wildmenu
" setting wildmenu
set list
" it is used to define invisible characters or characters which represent your tabs, spaces, trailing-lines,etc.
set autoindent
" puts your cursor on the same indentation level as the before line
" set smartindent
" automatically indents one line extra in some cases.
set nowrap
" stops wordwrap in vim
au BufEnter,BufNew,BufNewFile *.txt set wrap
" sets wrap for text files.
set noexpandtab
" sets tabs instead of spaces
set tabstop=4
" sets tabspace
set shiftwidth=4
" sets the width to shift for the selected lines or line of text
set relativenumber
" sets relative numbering
colorscheme bugwatch
" sets the colorscheme
