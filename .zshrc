# gitを/usr/local/bin/git(インストーラー)からbrewでインストールした物に切り替え
PATH=/usr/local/Cellar/git/2.26.1_1/bin:$PATH
export PATH

eval "$(anyenv init -)"

# 色を使用
autoload -Uz colors ; colors

# エディタをvimに設定
export EDITOR=vim

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=30000
SAVEHIST=30000
# 直前のコマンドの重複を削除
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed
# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''

# -----------------------------
# Prompt
# -----------------------------
# %M    ホスト名
# %m    ホスト名
# %d    カレントディレクトリ(フルパス)
# %~    カレントディレクトリ(フルパス2)
# %C    カレントディレクトリ(相対パス)
# %c    カレントディレクトリ(相対パス)
# %n    ユーザ名
# %#    ユーザ種別
# %?    直前のコマンドの戻り値
# %D    日付(yy-mm-dd)
# %W    日付(yy/mm/dd)
# %w    日付(day dd)
# %*    時間(hh:flag_mm:ss)
# %T    時間(hh:mm)
# %t    時間(hh:mm(am/pm))
PROMPT='%F{cyan}[ %?:%f%F{red}%~%f%F{cyan} ]#%f%F{yellow}>>>%f '
#PROMPT=`%{$fg[red]%}[ <%?> : %~ ]>>> %{$reset_color%}`


#export ZPLUG_HOME=$HOME/.zplug
#source $ZPLUG_HOME/init.zsh
#
##
## alien theme
##
#zplug "eendroroy/alien"
## 左側のプロンプト
#export ALIEN_SECTIONS_LEFT=(
#  exit
#  user
#  path
#  vcs_branch:async
## 以下のエラーメッセージが出力されるのでコメントアウト
## fatal: ambiguous argument 'master...@u': unknown revision or path not in the working tree.
## Use '--' to separate paths from revisions, like this:
##
## vcs_status:async
#  vcs_dirty:async
#  newline
#  ssh
#  venv
#  prompt
#)
#
## 右側のプロンプト
#export ALIEN_SECTIONS_RIGHT=(
#  battery
#  time
#)
#
## Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi
## Then, source plugins and add commands to $PATH
#zplug load --verbose
#
#
