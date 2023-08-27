# Nvim configuration

## Prerequisites

1. neovim version 0.9 or higher, can't be installed using snap. You can install it by following [this doc](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)

## Setup

Use the following steps to configure nvim

1. Clone the repo

`git clone https://github.com/augusto-queirantes/nvim.git ~/.config/nvim`

2. Go to the repo folder

`cd .config/nvim`

3. Execute the installation script

`bash setup.sh`

4. Set Hack as font on terminal and font size as 10

5. Disable user system colors checkbox on terminal configuration

6. Restart the computer

7. Open nvim

`nvim .`

8. Install Dependencies

```
:PackerInstall
:PackerSync
```

## Commom problems

1. You'll need to comment or remove every import inside `plugin/init.lua` to be able to download the packages. After the download ends, uncomment the importes to make then available.
2. You may face an error while dowloading dependencies in the first time, if it happens just close the neovim, open it again and run the commands.
