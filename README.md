My NixOS Setup (minimal install)

How to set it up (Step 1):
1. go inside of the directory `cd /etc/nixos/`
2. delete the default config `sudo rm configuration.nix`
3. then download the configuration.nix `curl -O https://raw.githubusercontent.com/mokuken/nixos-setup/main/nixos/configuration.nix`
4. then rebuild your system `sudo nixos-rebuild switch`

How to set it up (Step 2):
1. git clone the repo
2. go inside of the directory `cd nixos-setup/config`
3. type this command `cp -r * ~/.config`
4. then go back `cd ../`
5. go inside of the theme directory `cd themes/`
6. type this command `cp -r .gtkrc-2.0 .themes ~/`

Thats it, reboot your system to apply changes
