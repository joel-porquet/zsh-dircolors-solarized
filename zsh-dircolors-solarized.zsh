function setupsolarized ()
{
    local _SOLARIZED_THEME="ansi-universal"
    [[ $# -eq 1 ]] && _SOLARIZED_THEME=$1

    local _SOLARIZED_THEME_PATH="$_ZSH_DIRCOLORS_SOLARIZED_DIR/dircolors.${_SOLARIZED_THEME}"
    if [[ -f $_SOLARIZED_THEME_PATH ]]; then
        eval $(dircolors $_SOLARIZED_THEME_PATH)
    else
        echo "Could not load theme $_SOLARIZED_THEME_PATH"
    fi
}

function lssolarized ()
{
    for i in ${_ZSH_DIRCOLORS_SOLARIZED_DIR}/dircolors.*
    do
        echo $(basename ${i})
    done
}

# get the directory from when we're sourced
_ZSH_DIRCOLORS_SOLARIZED_DIR=${ZSH_DIRCOLORS_SOLARIZED_DIR:-${${0:A}:h}/dircolors-solarized}
