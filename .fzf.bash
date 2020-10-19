# Setup fzf
# ---------
if [[ ! "$PATH" == */project/eyedi/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/project/eyedi/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/project/eyedi/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/project/eyedi/.fzf/shell/key-bindings.bash"
