if [ -f "$HOME/.profile" ]; then
    source $HOME/.profile
fi

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"
