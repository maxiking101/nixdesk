{ config, pkgs, ... }:
{
  imports = [
    ./menu.nix
    ./rc.nix
    ./environment.nix
    ./kanshi.nix
  ];
}
