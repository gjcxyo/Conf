# ========================
# oh-my-zsh settings
# ========================

# 読み込むテーマを指定
ZSH_THEME="prompt"

# カラーを有効化
autoload -Uz colors
colors

# 文字コード
LANG=ja_JP.UTF-8
LC_CTYPE=ja_JP.UTF-8
LANG=ja_JP.UTF-8
LC_ALL=ja_JP.UTF-8

# ページャー
PAGER=less

# 履歴の件数
HISTSIZE=500000
SAVEHIST=500000

# 重複した履歴を保存しない
setopt hist_ignore_dups

# 履歴を共有する
setopt share_history

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# ウインドウ名の表示
set -g set-titles on
set -g set-titles-string '#W'

# 補完
## for zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

## 補完機能を有効にする
autoload -Uz compinit
compinit -u

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

## sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

## ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# 賢いmvを有効にする
autoload zmv

# エイリアス
export CLICOLOR=1
alias vi='vim'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias sudo='sudo '
alias ls='ls -G -F'

# C で標準出力をクリップボードにコピーする
## mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    alias -g C='| pbcopy'
fi

# Sublime Text 3 エイリアス
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'