" My configs
map <C-p> gt
map <C-n> gT

" NerdTree Config
nnoremap <Leader>j :NERDTreeToggle<CR>

" Literally just because I hate default spacing in yaml. 

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType js setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

" Terraform config
let g:terraform_fmt_on_save=1

" Ctrlp config
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0

" Languageserver config
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

au BufRead,BufNewFile *.asm set filetype=nasm

set runtimepath+=~/.vim_runtime/my_plugins/LanguageClient-neovim

" Fast move mode trick
map <Space><Space> :call ToggleFastMoveMode()<CR>
let g:fastMoveMode = 0
function! ToggleFastMoveMode()
    let g:fastMoveMode = 1 - g:fastMoveMode
    if (g:fastMoveMode == 0)
        noremap j j
        noremap k k
    else
        noremap j 20j
        noremap k 20k
    endif
endfunction
