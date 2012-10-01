noremap <C-X> :w!<CR>:!/usr/bin/php -f %<CR>
noremap <C-L> :!/usr/bin/php -l %<CR>

" PDV
source ~/.vim/bundle/PDV/.vim/php-doc.vim
inoremap <C-P> :call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

imap <buffer> <Leader>u <C-O>:call PhpInsertUse()<CR>
map <buffer> <Leader>u :call PhpInsertUse()<CR>
