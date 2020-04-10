#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig
ln -sf ${BASEDIR}/git-completion.bash ~/.git-completion.bash
