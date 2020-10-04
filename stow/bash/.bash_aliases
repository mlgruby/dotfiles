# alias scalalines='fd -e scala --full-path src/ | xargs wc -l | sort -n'
alias aliases='bat ~/.bash_aliases && echo "───── local ─────" && bat ~/.local/.bash_aliases 2>/dev/null'
alias b='bloop'
alias br='bloop exit && bloop about'
alias buffer='subl $BYOBU_RUN_DIR/printscreen'
alias c='code .'
alias cdf='cd $(ls | fzf)'
alias ce='code . && exit'
alias config='cd ~/.dotfiles'
alias dg='bloop about && bloop projects --dot-graph | dot -Tsvg -o dependency-graph.svg && xdg-open dependency-graph.svg'
alias di='touch .envrc .env && direnv allow'
alias gcam='ga . && git commit -am'
alias gcan!='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -v -a --no-edit --amend'
alias gcangpf!='gcan! && gpf!'
alias gco='g checkout $(gb | fzf)'
alias gcor='g checkout --track $(gbr | fzf)'
alias gfa='g fetch --all'
alias gfap='g fetch --all --prune'
alias gi='git init && git add . && git commit -am "Initial commit"'
alias gitalias='alias | grep git | fzf'
alias gpe='gp && exit'
alias grbiom='grbi origin/master'
alias grbom='grb origin/master'
alias gwipe='gwip && exit'
alias gwipgp='gwip && gp'
alias gwipgpe='gwip && gpe'
alias hk='gcam housekeeping && gpe'
alias ipp='curl https://ipecho.net/plain; echo'
alias ld='lazydocker'
alias lg='lazygit'
alias new-install-repo='g8 git@github.com:agilesteel/install-seed.g8.git'
alias new-scala-project='g8 devinsideyou/scala-seed'
alias sbtd='sbt -jvm-debug 5005'
alias sbtnoss='sbt --supershell=false'
alias scalac-phases='scalac -Xshow-phases'
alias scalalines='find . -path "*/src*" -name "*.scala" | xargs wc -l | sort -n'
alias update='sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove && cs update && exit'
alias v='vim'
alias vimc='vim ~/.config/nvim/general/config.vim'
alias vimi='vim ~/.config/nvim/init.vim'
alias vimp='vim ~/.config/nvim/plugins/all.vim'
