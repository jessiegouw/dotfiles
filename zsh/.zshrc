# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails osx bower brew npm Composer gitfast rvm sublime)
source $ZSH/oh-my-zsh.sh
# User configuration
## Git aliases
alias ga='git add'
alias gc='git commit -m '
alias gac='git add -A && git commit -m '
alias gb='git branch'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gps='git push'
alias ggpsp='grunt build && git push origin production'
alias gpsm='git push origin master'
alias glog='git log --graph --all --format=format:"%x1b[36m%h%C(reset) - %C(bold green)(%cr)%C(reset) %C(white)%s%C(reset) %C(bold white)‚Äö√Ñ√Æ %cn%C(reset)%C(bold yellow)%d%C(reset)" --abbrev-commit --date=relative'
## Laravel aliases
alias art='php artisan'
alias {art-key,art-keygen}='php artisan key:generate'
alias {artg-con,artg-controller}='php artisan generate:controller'
alias {artg-mod,artg-model}='php artisan generate:model'
alias artg-seed='php artisan generate:seed'
alias artg-view='php artisan generate:view'
alias {artg-mig,artg-migration}='php artisan generate:migration'
alias {art-mmig,art-makemigration}='php artisan migrate:make'
alias {art-mig,art-migrate}='php artisan migrate'
alias art-seed='php artisan db:seed'
## Composer aliases
alias comp='composer'
alias {comp-create,compc}='composer create-project'
alias {comp-req,compr}='composer require'
alias {comp-up,compu}='composer update'
alias comp-laravel='composer create-project laravel/laravel'
## Bower
alias b='bower'
alias {b-inst,b-install}='bower install --save'
alias {b-unin,b-uninstall}='bower uninstall --save'
alias {b-reg,b-register}='bower register'
## Misc
#alias ls='ls -lah | lolcat'
#alias rm='trash'
alias mv='mv -v'
alias cp='cp -Rv'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias chrome='open -a "Google Chrome"'
alias ff='open -a "Firefox"'
alias safari='open -a "Safari"'
alias 777='chmod -R 777'
alias dns-flush='dscacheutil -flushcache'
alias flush='dscacheutil -flushcache'
alias dns='dscacheutil -flushcache'
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias show-full-path='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES'
alias dev='cd /Volumes/Development; cd '
function list {
   ls -lah $1 | lolcat
}
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/Cellar/ruby/2.1.0/bin:/usr/local/opt/mysql55/bin"
export APPLICATION_ENV="development"
# export MANPATH="/usr/local/man:$MANPATH"
# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
# else
#  export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
### Added by the Heroku Toolbelt
#export PATH=/usr/local/opt/php56/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jessiegouw
export NVM_DIR="/Users/jessiegouw/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"

# This part is sort of my own code

echo "Do what you can't 💪🏼"

PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n) 🍚 \
%{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
 \
%{$fg[white]%}[%*] $exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
