#!/bin/sh
set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "✨ Setting up your world..."

# --- Homebrew ---------------------------------------------------------------
if ! command -v brew >/dev/null 2>&1; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "✅ Homebrew installed!"
else
  echo "🍺 Homebrew already installed."
fi

# パスを設定
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# --- 必須ツール ------------------------------------------------------------
echo "🔧 Installing essential packages..."
brew install \
  zsh \
  git \
  neovim \
  eza \
  tmux \
  lazygit \
  zsh-autosuggestions \
  zsh-syntax-highlighting

# --- oh-my-zsh --------------------------------------------------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🐚 Installing oh-my-zsh..."
  export RUNZSH=no
  export CHSH=no
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "✅ oh-my-zsh installed!"
else
  echo "🐚 oh-my-zsh already installed."
fi

# --- config directories ----------------------------------------------------
mkdir -p "$HOME/.config"

# Neovim
echo "🔗 Linking Neovim config..."
ln -sfn "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# coc.nvim
echo "🔗 Linking coc config..."
ln -sfn "$DOTFILES_DIR/coc" "$HOME/.config/coc"

# lazygit
echo "🔗 Linking lazygit config..."
mkdir -p "$HOME/Library/Application Support/lazygit"
ln -sfn "$DOTFILES_DIR/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/config.yml"
ln -sfn "$DOTFILES_DIR/lazygit/state.yml" "$HOME/Library/Application Support/lazygit/state.yml"

# zsh
echo "🐚 Linking zsh config..."
ln -sfn "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
[ -f "$DOTFILES_DIR/zsh/.zprofile" ] && ln -sfn "$DOTFILES_DIR/zsh/.zprofile" "$HOME/.zprofile"

# tmux
echo "🪟 Linking tmux config..."
ln -sfn "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

# git
echo "🌱 Linking git config..."
ln -sfn "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

# Fonts (Mac)
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "🔤 Installing Nerd Font..."
  mkdir -p ~/Library/Fonts
  cp "$DOTFILES_DIR/fonts/FiraCodeNerdFont-Retina.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Bold.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-BoldItalic.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Italic.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Regular.ttf" ~/Library/Fonts/
fi

echo "✅ All set!"
echo "再ログイン、または 'source ~/.zshrc' をしてね。"
