PROMPT='
$(_user_host)%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)$(_prompt_char)'

function _user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg[cyan]%}%n%{$fg[white]%} at %{$fg[yellow]%}%m%{$reset_color%} | "
  else
    echo "%{$fg[cyan]%}%n%{$reset_color%} | "
  fi
}

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo ''
  else
    echo '
▶ '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" | %{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="
%{$fg[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="
%{$fg[green]%}✔ "
