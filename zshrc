export ZSH_THEME="macovsky"
for config_file (~/.dotfiles/zsh/config/*.zsh) source $config_file

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc