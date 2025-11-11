# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# php & mysql
export PATH="/usr/local/opt/mysql/bin:$PATH"
#export PATH="/usr/local/opt/mysql@8.2/bin:$PATH"
export PATH="/usr/local/opt/icu4c@69/bin:$PATH"
export PATH="/usr/local/opt/icu4c@69/sbin:$PATH"



# anyenv init
export PATH="$PATH:/$HOME/.bin"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

#pyenv init
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv & phpenv
export PATH=$HOME/.rbenv/bin:$HOME/.phpenv/bin:$PATH
eval "$(rbenv init -)"
eval "$(phpenv init -)"

# for phpenv install
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libiconv/bin:$PATH"
export PATH="/usr/local/opt/krb5/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/krb5/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="/usr/local/opt/bison@2.7/bin:$PATH"

alias brew="env PATH=${PATH/\/Library\/Frameworks\/Python\.framework\/Versions/3\.8/bin:/} brew"
alias brew="env PATH=${PATH//Users/ryonagamatsu/.anyenv/envs/phpenv/shims:} brew"
alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew'

# for NativeScript
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:`npm bin -g`
export HOMEBREW_NO_AUTO_UPDATE=1

# alias
alias storm='open -a PhpStorm'
alias sourcetree='open -a SourceTree'
alias relogin='exec $SHELL -l'
alias mf='source mmb-frontend.sh'
alias sz='source ~/.zshrc'
alias nz='nano ~/.zshrc'
alias mb='source mmb-backend.sh'
alias mab='source mmb-admin-backend.sh'
alias maf='source mmb-admin-frontend.sh'
alias mmb='source open-mmb-project.sh'
alias redmine='source redmine.sh'
alias ctrmmb='source ctrmmb.sh'

# variables
export PAF="$HOME/Project/mmb/frontend"

###-tns-completion-start-###
if [ -f /Users/ryonagamatsu/.tnsrc ]; then 
    source /Users/ryonagamatsu/.tnsrc 
fi
###-tns-completion-end-###
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/ryonagamatsu/test-project/avalon/serverless/node_modules/tabtab/.completions/slss.zsh

# Load Angular CLI autocompletion.
source <(ng completion script)

# peco
function peco-select-history() {
local tac
if which tac > /dev/null; then
tac="tac"
else
tac="tail -r"
fi
BUFFER=$(\history -n 1 | \
eval $tac | \
peco --query "$LBUFFER")
CURSOR=$#BUFFER
zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# 重複したPATHの削除
typeset -U PATH

