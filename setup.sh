#!/bin/sh

set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "✨ Setting up your world..."

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

# Font (Mac)
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "🔤 Installing Nerd Font..."
  cp "$DOTFILES_DIR/fonts/FiraCodeNerdFont-Retina.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Bold.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-BoldItalic.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Italic.ttf" ~/Library/Fonts/
  cp "$DOTFILES_DIR/fonts/JetBrainsMonoNerdFont-Regular.ttf" ~/Library/Fonts/
fi

echo "✅ All set."
echo "再ログイン、または 'source ~/.zshrc' をしてね。"
