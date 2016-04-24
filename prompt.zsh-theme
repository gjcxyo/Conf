## Default shell configuration set prompt
case ${UID} in
## root
0)
PROMPT="%B%{${fg[magenta]}%}#%{${reset_color}%}%b "
PROMPT2="%B%{${fg[magenta]}%}#%{${reset_color}%}%b "
RPROMPT="[%~]"
SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
#[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
PROMPT="[%{${fg[white]}%}${USER}]${PROMPT}"
;;
## user
*)
PROMPT="%{${fg[magenta]}%}%%%{${reset_color}%} "
PROMPT2="%{${fg[magenta]}%}%%%{${reset_color}%} "
RPROMPT="[%~]"
SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
#[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
PROMPT="[%{${fg[white]}%}${USER}]${PROMPT}"
;;
esac