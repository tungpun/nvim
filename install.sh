sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y neovim
pip3 install neovim --user
pip3 install python-language-server --user

# for syntax checking

pip3 install jedi flake8 autopep8 --user

# Install vim-plug

cd ~/.config/

mkdir nvim

wget https://raw.githubusercontent.com/tungpun/nvim/master/init.vim -O ~/.config/nvim/init.vim

# git clone git@github.com:tungpun/nvim.git

curl -sL install-node.now.sh/lts | sudo bash

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'alias vim="nvim"' >> ~/.zshrc
source ~/.zshrc

echo "Type :PlugInstall in nvim"
