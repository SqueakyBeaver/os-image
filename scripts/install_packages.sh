#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

coding_packages=(
    "code"
    "neovim"
    "nodejs"
    "go"
)

misc_packages=(
    "zsh"
    "ripgrep"
    "htop"
    "firefox"
)


packages=(
    ${coding_packages[@]}
    ${misc_packages[@]}
)

rpm-ostree install ${packages[@]}
