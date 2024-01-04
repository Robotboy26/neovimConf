rm -rf ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r config/ ~/.config/nvim

# download nerd font
cd ~/
git clone https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/0xProto.zip
unzip 0xProto.zip
mv 0xProtoNerdFontMono-Regular.ttf ~/.fonts
mv 0xProtoNerdFontPropo-Regular.ttf ~/.fonts
mv 0xProtoNerdFont-Regular.ttf ~/.fonts
rm 0xProto.zip
