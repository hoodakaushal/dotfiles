# Load pyenv automatically by adding
# the following to ~/.bash_profile:
export PATH="/home/hooda/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH=$HOME/bin:$PATH
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/share/zookeeper/bin:$PATH"
source ~/.bashrc