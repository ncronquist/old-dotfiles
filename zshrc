# Load Custom Functions
for function in $HOME/.zsh/functions/*; do
  source "$function"
done

# Load Configurations
# Configurations are located in:
#   $HOME/.zsh/configs/pre
#   $HOME/.zsh/configs
#   $HOME/.zsh/configs/post
# The configurations are loaded first, second, and third, respectively
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*(N-.); do
        if [ "${config:e}" = "zwc" ] ; then continue ; fi
        . "$config"
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [[ -f $config && ${config:e} != "zwc" ]]; then
            . "$config"
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*(N-.); do
        if [ "${config:e}" = "zwc" ] ; then continue ; fi
        . "$config"
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
