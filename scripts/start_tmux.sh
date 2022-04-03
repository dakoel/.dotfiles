#!/bin/sh
if ! command -v tmux &> /dev/null
then
    >&2 echo "command not found: tmux"
    exit
fi

tmux new-session -d

tmux new-window
tmux rename-window ide
tmux split-window -v -p 20
tmux select-pane -t 1

if command -v htop &> /dev/null
then
    tmux new-window 'htop'
fi

tmux select-window -t 1

tmux -2 attach-session -d
