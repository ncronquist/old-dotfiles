### Terminal Syntax Highlighting

# Setup: "brew install highlight"

# Pipe Highlight to less
export LESSOPEN="| $(which highlight) %s --out-format xterm256 --line-numbers --quiet --force --style zenburn"
export LESS=" -R"
alias less='less -m -N -g -i -J --line-numbers --underline-special'
alias more='less'
