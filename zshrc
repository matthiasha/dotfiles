source ~/.zprezto/init.zsh

# You may need to manually set your language environment
export LANG=C.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias pipi="devpi install "
alias pipe="pip install -e"
alias pipu='pip uninstall'
alias rgrep='grep -r'
alias hd='hexdump -C'
alias gp='git pull && git push'
alias p4o='p4 changes -u mzhafn -s pending |head -n8'
alias pdfjoin="\"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py\""

function db {
    docker exec -it $1 bash
}

function mkdcd {
    mkdir -p $@
    cd $@
}

function _save_cd {
  cd $@
  rm -f ~/.cwd
  echo $PWD > ~/.cwd
}
[[ -e ~/.cwd ]] && cd `cat ~/.cwd`
alias cd=_save_cd


# Mac Key Bindings
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word

source "${HOME}/.iterm2_shell_integration.zsh"
[[ -e ~/tc/bin/activate_gti ]] && source ~/tc/bin/activate_gti

export PATH=~/bin:~/bin/`uname`:/usr/local/bin:$PATH
export LC_CTYPE=C.UTF-8
export P4CONFIG=.p4config
export PYTHONDONTWRITEBYTECODE=1
