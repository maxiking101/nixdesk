{ config, pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    macchina
    proton-pass
  ];
}
