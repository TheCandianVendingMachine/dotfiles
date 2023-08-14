#!/usr/bin/env bash

for d in * .[^.]*; do
    if [ "$d" = ".config" ] |\ [ "$d" = ".git" ] || [ "$d" = ".gitmodules" ] || [ "$d" = "install.sh" ]; then
        continue
    fi
    if [ -f "$d" ]; then
        echo "Linking $d to $HOME/$d..."
        ln "$HOME/dotfiles/$d" "$HOME/$d"
    fi
    if [ -d "$d" ]; then
        echo "Linking $d to $HOME/$d..."
        ln -s "$HOME/dotfiles/$d" "$HOME"
    fi
done

for d in .config/*; do
    if [ -f "$d" ]; then
        echo "Linking $d to $HOME/$d..."
        ln "$HOME/dotfiles/$d" "$HOME/$d"
    fi
    if [ -d "$d" ]; then
        echo "Linking $d to $HOME/$d..."
        ln -s "$HOME/dotfiles/$d" "$HOME/$d"
    fi
done
