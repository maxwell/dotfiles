export RUBY_GC_HEAP_INIT_SLOTS=2000000
export RUBY_HEAP_FREE_MIN=20000
export RUBY_GC_MALLOC_LIMIT=100000000

export GIT_PS1_SHOWDIRTYSTATE=1 

export PATH=/usr/local/bin:/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]⚓ '

[[-s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(direnv hook bash)"
