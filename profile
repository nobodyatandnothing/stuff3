# vim: set ft=bash:
alias apr='sudo swupd bundle-remove'
alias apl='sudo swupd bundle-list'
alias apa='sudo swupd bundle-add'
alias aps='sudo swupd search'
alias apu='sudo swupd update'
alias api='sudo swupd bundle-info'
alias ap='sudo swupd'
alias ls="ls --colo=auto -nFA --time-style='+'"
alias vi=nvim
alias svi=sudoedit
alias res='ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0'
alias freq='watch -n 1 "grep MHz /proc/cpuinfo; echo; sudo intel_gpu_frequency"'
alias zathura='zathura --fork'
alias grep='grep --colo=auto'
alias info='info --vi-keys'
alias sway='sway-run'

export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig:/usr/local/lib64/pkgconfig
export TERMINFO=/usr/local/share/terminfo

export XKB_DEFAULT_MODEL=dellusbmm
export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_VARIANT=3l

export TERMINAL=foot
#export TERMINAL_COMMAND=foot

export QT_QPA_PLATFORMTHEME=qt5ct
export GTK_THEME=Dracula
export XCURSOR_THEME=Dracula

export MANPAGER='nvim +Man!'

#export MANPAGER="less -R --use-color -Dd+r -Du+b"
#export GROFF_NO_SGR=1
[[ $PATH != *.local* ]] && export PATH=$PATH:~/.local/bin
[[ $PATH != *.cargo* ]] && export PATH=$PATH:~/.cargo/bin
[[ $PATH != *.luarocks ]] && export PATH=$PATH:~/.luarocks/bin

export BEMENU_BACKEND=curses
#vi=~/.config/nvim/init.vim

#export LS_COLORS=

#home=~/.local/bin
#if [[ $PATH != *$home* ]]; then
#	export PATH=$PATH:$home
#fi

set -o vi


#eval "$(thefuck --alias)"

export PS1='\[\033[38;5;2m\]\w\[\033[m\]\[\033[38;5;3m\]$(__git_ps1) \$ \[\033[m\]'

#cd ~/Desktop
