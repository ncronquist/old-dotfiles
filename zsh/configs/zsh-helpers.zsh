source "$HOME/.local/share/zsh/functions/zsh-syntax-highlighting"
source "$HOME/.local/share/zsh/functions/zsh-history-substring-search"

# Bind Up and Down arrow keys to searching through history
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
