{ pkgs, inputs, ... }:
{
  # Use https://search.nixos.org/options? to find out about all the options you have here

  networking.hostName = "yourmachinename";

  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };

  users.users.yourusername = { ... }: {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.yourusername = { pkgs, lib, config, ... }: {
    # Use https://mipmip.github.io/home-manager-option-search/ to find out about all the options you have here
    home.packages = with pkgs; [
      tldr
      # Use https://search.nixos.org/packages to find out about all the options you have here
    ];
    home.stateVersion = "23.05";
  };
  system.stateVersion = "23.05";
}