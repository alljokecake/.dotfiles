set fish_greeting
fish_vi_key_bindings

set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

set fish_cursor_default block

set fish_cursor_insert block

set fish_cursor_replace_one block

set fish_cursor_visual block

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# based
alias vim "nvim"
alias vi /usr/bin/vim

# REMOVEME
alias mypy "mypy --strict"
