#dotfiles

use GNU Stow on each package to move them to grandfather directory
e.g. dotfiles/vim/.vimrc will become symbolically linked to ~/.vimrc

run "stow -t etc" to link etc files to /etc
