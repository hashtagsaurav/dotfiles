#####  Script for uploading all desired dotfiles to github using gitbare #####

echo "Adding files to repo"
shopt -s expand_aliases
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
cd
config add Screenshots .config/alacritty .config/betterlockscreenrc .config/colorls .config/dunst .config/gtk-2.0 .config/gtk-3.0 .config/i3 .config/Kvantum .config/nvim .config/picom .config/polybar .config/ranger .config/rofi .config/zathura .zshrc .p10k.zsh README.md config.sh
config status
echo "You can review current status above."
read -p "Enter the commit message : " msg
config commit -m "$msg"
config push
