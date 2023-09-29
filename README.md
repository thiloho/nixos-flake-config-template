# nixos-flake-config-template

A simple flake template to get a working NixOS system with home-manager as a module.

## Instructions

1. Clone this repository using the `git clone` command.
If you do not have git installed on your system, you can use the following command:
```
nix shell nixpkgs#git --extra-experimental-features 'nix-command flakes' -c git clone https://github.com/thiloho/nixos-flake-config-template.git
```
3. Replace `yourusername` in `/nixos-configurations/yourmachinename/default.nix` with the name you want for your user.
4. Replace `yourmachinename` in `flake.nix` and `/nixos-configurations/yourmachinename/default.nix` with the name you want for your machine/device.
5. Use the command `sudo nixos-rebuild switch --flake .` in the root of the directory (where `flake.nix` is located) to rebuild the system you are currently on with the configuration specified in `/nixos-configurations/<yourmachinename>/default.nix`.
