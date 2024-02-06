rm -rf ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r nvim ~/.config/

# download nerd font
cd ~/
wget -O Agave.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Agave.zip
unzip Agave.zip
mv *.ttf ~/fonts
rm Agave.zip
