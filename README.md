# nixos-flake-config-template

A simple flake template to get a working NixOS system with home-manager as a module.

## Instructions

1. Replace `yourusername` in `/nixos-configurations/yourmachinename/default.nix` with the name you want for your user.
2. Replace `yourmachinename` in `flake.nix` and `/nixos-configurations/yourmachinename/default.nix` with the name you want for your machine/device.
3. Use the command `sudo nixos-rebuild switch --flake .` in the root of the directory (where `flake.nix` is located) to rebuild the system you are currently on with the configuration specified in `/nixos-configurations/<yourmachinename>/default.nix`.
