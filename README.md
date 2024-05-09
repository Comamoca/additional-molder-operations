<div align="center">

![Last commit](https://img.shields.io/github/last-commit/Comamoca/additional-molder-operations?style=flat-square)
![Repository Stars](https://img.shields.io/github/stars/Comamoca/additional-molder-operations?style=flat-square)
![Issues](https://img.shields.io/github/issues/Comamoca/additional-molder-operations?style=flat-square)
![Open Issues](https://img.shields.io/github/issues-raw/Comamoca/additional-molder-operations?style=flat-square)
![Bug Issues](https://img.shields.io/github/issues/Comamoca/additional-molder-operations/bug?style=flat-square)

<img src="https://emoji2svg.deno.dev/api/🦊" alt="eyecatch" height="100">

# additional-molder-operations

Additional Operation plugin for [vim-molder](https://github.com/mattn/vim-molder/)

<br>
<br>

</div>
<div align="center">
</div>

## 🚀 How to use

This plugin work with molder.


```vim
autocmd FileType molder call s:molder_settings()

function! s:molder_settings() abort
  nnoremap <buffer><silent> N
    \ <Cmd>call molder#extension#operations#newfile()<CR>

  nnoremap <buffer><silent> K
    \ <Cmd>call molder#extension#operations#newdir_parents()<CR> 
endfunction
```

## ⬇️  Install

For [vim-plug](https://github.com/junegunn/vim-plug) plugin manager:

```vim
Plug 'mattn/vim-molder'
Plug 'mattn/vim-molder-operations'
Plug 'comamoca/additional-molder-operations'
```

## 📜 License

MIT

## 👏 Affected projects

- [molder](https://github.com/mattn/vim-molder)
