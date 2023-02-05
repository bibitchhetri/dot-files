#!/usr/bin/env bash
set -e
[ -n "$PYENV_DEBUG" ] && set -x

program="${0##*/}"
if [[ "$program" = "python"* ]]; then
  for arg; do
    case "$arg" in
    -c* | -- ) break ;;
    */* )
      if [ -f "$arg" ]; then
        export PYENV_FILE_ARG="$arg"
        break
      fi
      ;;
    esac
  done
fi

export PYENV_ROOT="/Users/bibitkunwar/.config/iterm2/AppSupport/iterm2env-72"
exec "/Users/bibitkunwar/.config/iterm2/AppSupport/iterm2env-72/pyenv/libexec/pyenv" exec "$program" "$@"
