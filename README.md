# Nvim configuration

## Prerequisites

1. neovim version 0.9 or higher, can't be installed using snap

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

6. Open nvim

`nvim .`

7. Install Dependencies

```
:PackerInstall
:PackerSync
```

6. Close and open nvim

## Commom problems

1. You may face an error while dowloading dependencies in the first time, if it happens just close the neovim, open it again and run the commands
