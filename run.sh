sudo apt-get update
sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
sudo apt install zsh
sudo apt install neovim
sudo apt install pipenv
sudo apt install git
sudo apt install autojump

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
curl https://pyenv.run | bash
curl -L git.io/antigen > ~/.antigen.zsh

chsh -s $(which zsh)
echo "source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle nvm
antigen bundle pyenv
antigen bundle last-working-dir
antigen bundle autojump
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

alias vim=nvim" > ~/.zshrc
source ~/.zshrc
