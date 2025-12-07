# ----- oh-my-zsh -----
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"        # 視認性◎の軽量テーマ
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#3a3d4a'
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# ----- 基本設定 -----
export EDITOR="nvim"
setopt AUTO_CD AUTO_PUSHD SHARE_HISTORY
bindkey -e
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LESS='-R'
typeset -U path PATH        # PATHの重複を自動除去

# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# ----- Node.js（Volta 例）-----
export VOLTA_HOME="$HOME/.volta"
[[ -d "$VOLTA_HOME/bin" ]] && path=("$VOLTA_HOME/bin" $path)

# ----- Go / mise -----
# Go の作業ディレクトリ
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

# go install したツール群（$GOBIN）を PATH 先頭へ
path=("$GOBIN" $path)

# mise の shims を PATH 先頭へ
if [[ -d "$HOME/.local/share/mise/shims" ]]; then
  path=("$HOME/.local/share/mise/shims" $path)
fi

# ----- Python（必要時のみ）-----
if command -v pyenv >/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  path=("$PYENV_ROOT/bin" $path)
  eval "$(pyenv init -)"
fi

# ----- オプションツール -----
# fzf
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
# direnv
command -v direnv >/dev/null 2>&1 && eval "$(direnv hook zsh)"
# Angular 補完
command -v ng >/dev/null 2>&1 && source <(ng completion script)

# ----- エイリアス -----
alias ls="eza --icons --color=auto"
alias ll="eza -l --icons --color=auto"
alias tree="eza -T --icons --color=auto"

# 最後に読み込む必要がある
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
