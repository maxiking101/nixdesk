{ config, pkgs, ... }:
{
  xdg.configFile."labwc/autostart".text = ''
    ${pkgs.kanshi}/bin/kanshi >/dev/null 2>&1 &
    ${pkgs.wpaperd}/bin/wpaperd -d
    ${pkgs.waybar}/bin/waybar >/dev/null 2>&1 &
    ${pkgs.wireplumber}/bin/wpctl set-default 53
  '';
}