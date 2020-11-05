# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo "[%{$fg_bold[green]%}$current_branch%{$reset_color%}]"
  fi
}

setopt promptsubst
# Allow exported PS1 variable to override default prompt.
if ! env | grep -q '^PS1='; then
    export PS1='$(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '
fi

