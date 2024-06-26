{ config, pkgs, ... }:
{
  imports = [
    ./persistence.nix
    ./packages.nix
    ./git.nix
    ./firefox.nix
    ./labwc
    ./vscode.nix
    ./alacritty.nix
    ./wezterm.nix
    ./shell.nix
  ];
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "24.05";
  };
  programs.home-manager.enable = true;
}
