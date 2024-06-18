{ config, pkgs, ... }:
{
  imports = [
    ./persistence.nix
  ];
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "24.05";
  };
  programs.home-manager.enable = true;
}
