# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/guasam.omp.json)"

# This puts a blank line before every prompt except the first one: all the first
# precmd invocation does is replace precmd with a function that calls echo.
precmd() { precmd() { echo } }

# Aliases
alias guasam=cd\ /mnt/d/Guasam
alias workbench=cd\ /mnt/d

# Disable ZSH underlines
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# LS Colors
export LS_COLORS="di=34;40:ln=36;40:so=35;40:pi=33;40:ex=32;40:bd=1;33;40:cd=1;33;40:su=0;41:sg=0;43:tw=0;42:ow=34;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
