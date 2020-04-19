# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Nicer prompt.
#export PS1=$'\n'"%F{green} %*%F %3~ %F{white}$ "
#export PS1="%F{214}%K{000}%m%F{015}%K{000}:%F{039}%K{000}%~%F{015}%K{000}\$ "
#export PS1="\[\e[31m\][\[\e[m\]\[\e[31m\]\A\[\e[m\]\[\e[31m\]]\[\e[m\]\W "
PROMPT='%F{red}[%T]%f %d: '
# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
