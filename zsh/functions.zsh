#!/usr/bin/env zsh

# Report working directory to Ghostty through tmux via DCS passthrough.
# Ghostty's shell integration doesn't auto-load inside tmux, so this enables
# window-inherit-working-directory support.
if [[ -n "$TMUX" && -n "$GHOSTTY_RESOURCES_DIR" ]]; then
  _ghostty_report_pwd_passthrough() {
    printf '\ePtmux;\e\e]7;kitty-shell-cwd://%s%s\a\e\\' "$HOST" "$PWD"
  }
  chpwd_functions+=(_ghostty_report_pwd_passthrough)
  precmd_functions+=(_ghostty_report_pwd_passthrough)
  _ghostty_report_pwd_passthrough
fi

# kubectl get pods and grep for arg in the results.
kgpg () {
    if [ -z $1 ] ; then
        kubectl get pods
    else
        kubectl get pods | grep $1
    fi
}

# Run a shell session inside the first matching pod based on your input
kubesh () {
    if [ -z $1 ]; then
        echo "Usage: kubesh <pod>"
        return 1
    fi
    POD=$(kubectl get pod|grep $1|head -1|awk '{print $1}')
    echo "Shelling into pod $POD"
    kubectl exec -ti $POD -- sh
}

# Output the time it takes for zsh to startup and become interactive.
timesh () {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# Change directory to the path returned by yazi.
# https://yazi-rs.github.io/docs/quick-start#shell-wrapper
fm() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}
