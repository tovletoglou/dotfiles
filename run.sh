#!/bin/bash

[[ -n ${ZSH_VERSION-} ]] &&
  PROJECT_ROOT="$0" ||
  PROJECT_ROOT="$BASH_SOURCE"
[[ $PROJECT_ROOT =~ ^/ ]] ||
  PROJECT_ROOT="$PWD/$PROJECT_ROOT"

PROJECT_FILE=$PROJECT_ROOT
PROJECT_ROOT="$(cd "$(dirname $PROJECT_ROOT)"; pwd)"

ln -sf $PROJECT_ROOT/.bash_history  $HOME/.bash_history
ln -sf $PROJECT_ROOT/.bash_logout   $HOME/.bash_logout
ln -sf $PROJECT_ROOT/.bash_profile  $HOME/.bash_profile
ln -sf $PROJECT_ROOT/.bashrc        $HOME/.bashrc
ln -sf $PROJECT_ROOT/.dir_colors    $HOME/.dir_colors
ln -sf $PROJECT_ROOT/.gitattributes $HOME/.gitattributes
ln -sf $PROJECT_ROOT/.gitconfig     $HOME/.gitconfig
ln -sf $PROJECT_ROOT/.gitignore     $HOME/.gitignore
ln -sf $PROJECT_ROOT/.viminfo       $HOME/.viminfo
ln -sf $PROJECT_ROOT/.vimrc         $HOME/.vimrc
