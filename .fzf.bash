# Setup fzf
# ---------
if [[ ! "$PATH" == */home/eyedi/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/eyedi/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/eyedi/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/eyedi/.fzf/shell/key-bindings.bash"
