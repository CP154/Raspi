#!/bin/bash
tmux new -s "RRD Update Skripte" -d
tmux set remain-on-exit on
tmux set-option -g default-shell "/bin/bash"
tmux new-window "/home/cp/temp.sh"
