if command -v "yarn" > /dev/null 2>&1; then
    export PATH="$(yarn global bin):$PATH"
fi
