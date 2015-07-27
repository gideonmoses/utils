export PATH=/Applications/mongodb/mongodb-6.7/bin:$PATH
#PS1="\e[0,30mYou are in:\e[m \w \r\n$"
alias ls="ls -ltrG"
alias lsa="ls -ltraG"
alias vim=mvim
alias vi=mvim
alias findjs="find . -name '*.js' -o -name '*.hbs' | grep -v tmp | grep -v test | grep -v mock | grep -v node_modules |grep -v dist | grep -v bower_components >cscope.files"
_grepf() {
echo "$1"
  while read filename; do grep -Hi $1 $filename; done < cscope.files
}
alias grepf=_grepf
alias myip="ifconfig | grep inet | grep broadcast | awk '{print \$2}'"

# for WB 2.0 (SCB)
export NODE_PATH=/usr/local/lib/node_modules/

function _update_ps1() {
  export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
