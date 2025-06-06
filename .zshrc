export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls="eza -l"
alias psql="docker run -it --rm alpine/psql"

export OPENAI_API_KEY="$(cat ~/.config/.openaikey)"
export ANTHROPIC_API_KEY="$(cat ~/.config/.anthropickey)"

neofetch
