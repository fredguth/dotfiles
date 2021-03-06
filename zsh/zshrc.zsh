# Entry point for ZSH settings. Source's all other settings files.

# Set the default dotfiles location {{{
    export DOTFILES="$HOME/.dotfiles/"
# }}}
# Source zsh files {{{
    # Source the Prezto settings.
    source $DOTFILES/zsh/zprestorc

    # Source the settings file
    source $DOTFILES/zsh/settings.zsh

    # Source https://github.com/aziz/dotfiles/blob/master/bash/bash_it.sh
    # Load Tab Completion
    for config_file in "${DOTFILES}"/zsh/completion/*.zsh(.N); do
        source $config_file
    done

    # Load Plugins
    for config_file in "${DOTFILES}"/zsh/plugins/*.zsh(.N); do
        source $config_file
    done

    # Load Aliases
    for config_file in "${DOTFILES}"/zsh/alias/*.zsh(.N); do
        source $config_file
    done

    unset config_file
# }}}
