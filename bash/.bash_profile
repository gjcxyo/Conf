### This is color scheme for Terminal.
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxCxDxBxegedabagacad


### This is prompt setting.
#PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]: \[\033[0;36m\]\W\[\e[0m\]\$ '
#PS1='[¥d ¥t] ¥u@¥h:¥w ¥n$'

### This is command aliases.
alias ls='ls -GFh'
alias la='ls -la'
alias ll='ls -l'

### This is AWS CLI settings.
export JAVA_HOME=/Library/Java/Home

export AWS_ACCESS_KEY=AKIAIKGXK4HB6J4YRNSA
export AWS_SECRET_KEY=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
export AWS_CREDENTIAL_FILE=$HOME/aws/api/credential.txt

export EC2_HOME=$HOME/aws/api/ec2
export EC2_URL=http://ec2.ap-northeast-1.amazonaws.com
export EC2_REGION=ap-northeast-1

export AWS_RDS_HOME=$HOME/aws/api/rds

export AWS_ELB_HOME=$HOME/aws/api/elb

export AWS_AUTO_SCALING_HOME=$HOME/aws/api/autoscale

export PATH=$PATH:$HOME/aws/api/ec2/bin:$HOME/aws/api/rds/bin:$HOME/aws/api/elb/bin:$HOME/aws/api/autoscale/bin

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


### This is prompt settings.
function promps {
    # gitの状態取得スクリプト読み込み
    source $HOME/.git-completion.bash
    source $HOME/.git-prompt.sh

    # プロンプトに各種情報を表示
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUPSTREAM=1
    GIT_PS1_SHOWUNTRACKEDFILES=
    GIT_PS1_SHOWSTASHSTATE=1

#export PS1='[\D{%F} \t] \[\033[1;32m\]\u\[\033[00m\]@\[\e[1;33m\]\h\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \n\$ '

    # 色は気分で変えたいかもしれないので変数宣言しておく
    local U="\[\e[1;32m\]"
    local H="\[\e[1;33m\]"
    local W="\[\e[1;34m\]"
    local GIT="\[\e[1;31m\]"
    local DEFAULT="\[\e[00m\]"

    PS1="[\D{%F} \t] ${U}\u${DEFAULT}@${H}\h${DEFAULT}:${W}\w${GIT}\$(__git_ps1)${DEFAULT} \n\$ "
}
promps


