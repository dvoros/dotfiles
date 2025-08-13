SHELL := /bin/bash

DOTFILES_DIR ?= ${HOME}/dotfiles
XDG_CONFIG_HOME ?= ${HOME}/.config

prepare:
	mkdir -p \
		"${XDG_CONFIG_HOME}" \
		~/repos
	brew bundle --file="${DOTFILES_DIR}/Brewfile"

git-configure:
	ln -fs "${DOTFILES_DIR}/git/gitconfig" "${HOME}/.gitconfig"

kitty-configure:
	rm -rf "${XDG_CONFIG_HOME}/kitty/kitty.conf"
	ln -s "${DOTFILES_DIR}/kitty.conf" "${XDG_CONFIG_HOME}/kitty/kitty.conf"

nvim-configure:
	rm -rf "${XDG_CONFIG_HOME}/nvim"
	git clone https://github.com/dvoros/kickstart.nvim.git "${XDG_CONFIG_HOME}/nvim"

aerospace-configure:
	rm -rf "${HOME}/.aerospace.toml"
	ln -s "${DOTFILES_DIR}/aerospace.toml" "${HOME}/.aerospace.toml"
