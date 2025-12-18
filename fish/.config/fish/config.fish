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

if status is-interactive
# don't nest inside another tmux
and not set -q TMUX
  # Adapted from https://unix.stackexchange.com/a/176885/347104
  # Create session 'genesis' or attach to 'genesis' if already exists.
  tmux new-session -A -s genesis
end

# FZF
export FZF_DEFAULT_OPTS="
    --layout=reverse
    --border
"
