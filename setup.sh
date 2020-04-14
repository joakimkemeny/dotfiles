#!/bin/zsh

export SRC_DIR=`pwd`

if [[ -e ~/.oh-my-customizations ]]; then
	rm ~/.oh-my-customizations
fi
ln -s ${SRC_DIR}/.oh-my-customizations ~/.oh-my-customizations

ln -sf ${SRC_DIR}/.ssh/config ~/.ssh/config
ln -sf ${SRC_DIR}/.gitconfig ~/.gitconfig
ln -sf ${SRC_DIR}/.gitignore_global ~/.gitignore_global
ln -sf ${SRC_DIR}/.hushlogin ~/.hushlogin
ln -sf ${SRC_DIR}/.prettierrc ~/Projects/.prettierrc
ln -sf ${SRC_DIR}/.vimrc ~/.vimrc
ln -sf ${SRC_DIR}/.zshrc ~/.zshrc
