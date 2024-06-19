{ config, pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    macchina
    proton-pass
    labwc-menu-generator
    wlr-randr
    kanshi
  ];
}
