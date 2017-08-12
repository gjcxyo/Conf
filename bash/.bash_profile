### This is color scheme for Terminal.
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxCxDxBxegedabagacad


### This is command aliases.
alias ls='ls -GFh'


### This is prompt settings.
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
function promps {
    # 色は気分で変えたいかもしれないので変す宣言しておく
    local  BLUE="\[\e[1;34m\]"
    local  RED="\[\e[1;31m\]"
    local  GREEN="\[\e[1;32m\]"
    local  WHITE="\[\e[00m\]"
    local  GRAY="\[\e[1;37m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\w\007\]';;
        *)      TITLEBAR="";;
    esac
    local BASE="\u@\h"
    PS1="[\D{%F} \t] ${TITLEBAR}${GREEN}\u${WHITE}@${BLUE}\h${WHITE}:${RED}\w${GREEN}\$(parse_git_branch)${WHITE} \n\$ "
}
promps

