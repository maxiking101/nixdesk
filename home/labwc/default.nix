{ config, pkgs, ... }:
{
  imports = [
    # ./menu.nix
    ./rc.nix
    ./environment.nix
    ./theme.nix
    ./kanshi.nix
    ./autostart.nix
    ./dunst.nix
    ./qt.nix
    ./wpapaerd.nix
    ./waybar.nix
  ];
}
