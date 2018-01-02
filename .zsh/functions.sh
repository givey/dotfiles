#!/usr/local/bin/zsh

flushdns () {
  dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
  sudo brew services restart dnsmasq
}

update-dotfiles() {
  cd ~/src/givey/dotfiles
  git pull --rebase
  ~/src/givey/dotfiles/script/update
  source ~/.zshrc
  cd -
}

web() {
  cd ~/src/givey/web
}

rspec() {
  bundle exec rspec $@
}

lock-screen() {
  automator ~/.dotfiles/automator/Lock\ Screen.workflow
}

remove-all() {
  brew remove --force --ignore-dependencies $(brew list)
  rm -rf ~/.Brewfile
  rm -rf ~/.gitconfig
  rm -rf ~/.gitconfig-user
  rm -rf ~/.gitignore-global
  rm -rf ~/.zsh
  rm -rf ~/.zshrc
  rm -rf ~/iCloud\ Drive
}
