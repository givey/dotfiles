ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

export ZSH=/Users/carl/.oh-my-zsh
export SHELL=/usr/local/bin/zsh
export UPDATE_ZSH_DAYS=7
export LANG=en_US.UTF-8
export BASHDOWN_DEFAULT_COMMAND="open -a /Applications/Google\ Chrome.app"

plugins=(git ruby)

eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Android Development
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/bin/gradle
export ANDROID_HOME=/usr/local/Caskroom/android-sdk/25.2.3
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PATH=bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.zsh/functions.sh

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='subl'
fi
export BUNDLER_EDITOR=subl

alias wspec="rspec --require web/rails_helper.rb"
