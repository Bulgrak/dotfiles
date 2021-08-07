# Dotfiles
Configuration for:
- neovim
- bashrc (git prompt from https://github.com/jcgoble3/gitstuff/blob/master/gitprompt.sh)

# win32yank
Run this:
```
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
mv /tmp/win32yank.exe ~/bin
```

Also put the following into vim config:
```
set clipboard=unnamedplus
```

Start nvim and yanking to '\*' or '\+' will now work

# Fonts
Fira Code Nerd Font - https://github.com/ryanoasis/nerd-fonts
