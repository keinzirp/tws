default: stow install
stow:
    stow -R -d . -t ~ stow
install: stow
    cp tws ~/.local/bin/tws
    chmod +x ~/.local/bin/tws
