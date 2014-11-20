#!/bin/zsh

export SRC_DIR=`pwd`

if [[ -e ~/.oh-my-customizations ]]; then
	rm ~/.oh-my-customizations
fi
ln -s ${SRC_DIR}/.oh-my-customizations ~/.oh-my-customizations

if [[ -e ~/.planter ]]; then
	rm ~/.planter
fi
ln -s ${SRC_DIR}/.planter ~/.planter

if [[ -e ~/Scripts ]]; then
	rm ~/Scripts
fi
ln -s ${SRC_DIR}/Scripts ~/Scripts

ln -sf ${SRC_DIR}/.ssh/config ~/.ssh/config
ln -sf ${SRC_DIR}/.gitconfig ~/.gitconfig
ln -sf ${SRC_DIR}/.gitignore_global ~/.gitignore_global
ln -sf ${SRC_DIR}/.zshrc ~/.zshrc
