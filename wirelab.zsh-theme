ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"

current_ruby() {
  echo "[%{$fg_bold[green]%}$(rbenv version-name)%{$reset_color%}]"
}

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='$(current_ruby)$(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '
