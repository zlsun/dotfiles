# User environment variables

# JDK
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=$CLASSPATH:.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=$PATH:${JAVA_HOME}:${JAVA_HOME}/bin:${JAVA_HOME}/lib:${JRE_HOME}/bin

# Android-SDK
export ANDROID_SDK=~/Android/android-sdk-linux
export PATH=$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$PATH

# Go
export GOROOT=/usr/lib/go
export GOARCH=amd64
export GOOS=linux
export GOPATH=~/golang
export GOBIN=$GOROOT/bin
export PATH=$GOBIN:$PATH

# include paths
export C_INCLUDE_PATH=$C_INLUDE_PATH:~/Desktop/working/sunlib/include/
export CPLUS_INCLUDE_PATH=$CPLUS_INLUDE_PATH:~/Desktop/working/sunlib/include/

# cabal
export PATH=$HOME/.cabal/bin:$PATH

# dotfiles
export DOTFILES=$HOME/dotfiles

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

