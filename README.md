# nixos-flake-config-template

An easy flake template to get an up and running NixOS system with home-manager as module.

## Instructions

1. Replace `yourusername` in `/nixos-configurations/yourmachinename/default.nix` with the name you wish to have for your user.
2. Replace `yourmachinename` in `flake.nix` and `/nixos-configurations/yourmachinename/default.nix` wtith the name you wish to have for your machine / device.
3. Use the command `sudo nixos-rebuild switch --flake .` in the root of the directory (where `flake.nix` is located) to rebuild the system you are currently on with the configuration specified in `/nixos-configurations/<yourmachinename>/default.nix`.
