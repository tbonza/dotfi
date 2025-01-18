export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/tylerbrown/.opam/opam-init/init.zsh' ]] || source '/Users/tylerbrown/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

export PKG_CONFIG_PATH="/opt/homebrew/opt/libxml2/lib/pkgconfig"

ELAN_ROOT="$HOME/.elan"
export PATH="$ELAN_ROOT/bin:$PATH"

