#dotfiles

Use GNU Stow on each package to move them to grandfather directory
e.g. dotfiles/vim/.vimrc will become symbolically linked to ~/.vimrc

Run "./stowall" to automatically stow every package in the repository or edit to select packages to be GNU+Stowed

Run "stow -t etc" to link etc files to /etc
