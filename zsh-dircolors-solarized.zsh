# get the directory from when we're sourced
_ZSH_DIRCOLORS_SOLARIZED_DIR=${ZSH_DIRCOLORS_SOLARIZED_DIR:-${${0:A}:h}/dircolors-solarized}
_CONFIG_FILE=$HOME/.zsh-dircolors.config

function lssolarized ()
{
    for i in ${_ZSH_DIRCOLORS_SOLARIZED_DIR}/dircolors.*
    do
        echo $(basename ${i})
    done
}

function setupsolarized ()
{
    local _SOLARIZED_THEME="dircolors.ansi-universal"
    [[ $# -eq 1 ]] && _SOLARIZED_THEME=$1

    local _SOLARIZED_THEME_PATH="$_ZSH_DIRCOLORS_SOLARIZED_DIR/${_SOLARIZED_THEME}"
    if [[ -f $_SOLARIZED_THEME_PATH ]]; then
        eval $(dircolors $_SOLARIZED_THEME_PATH)
    else
        echo "Could not load theme $_SOLARIZED_THEME_PATH"
    fi

    # Save the settings to a file
    setopt CLOBBER
    echo $_SOLARIZED_THEME > $_CONFIG_FILE
    unsetopt CLOBBER
}

[[ -e $_CONFIG_FILE ]] && setupsolarized $(cat $_CONFIG_FILE)
