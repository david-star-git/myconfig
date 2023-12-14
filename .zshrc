# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export EDITOR=nvim
export VISUAL=nvim

alias vim='nvim'
alias grep='grep --color=auto'
alias ls='exa -alh'
alias tree='exa --tree'
alias zrc="$EDITOR $HOME/.zshrc"
alias cat="bat"
alias top="btm"
alias neofetch="neofetch --ascii ~/.config/neofetch/cat.txt"

print ""
print ""
neofetch
print ""

cd

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-history-substring-search
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
