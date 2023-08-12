""""""""""""""""""""""""""""""
" => vim-easymotion
""""""""""""""""""""""""""""""

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
nmap s <Plug>(easymotion-s2)

map ,l <Plug>(easymotion-lineforward)
map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
map ,h <Plug>(easymotion-linebackward)

" keep cursor column when JK motion
let g:EasyMotion_startofline = 0
