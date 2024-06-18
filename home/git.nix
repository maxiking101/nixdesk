{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userEmail = "max.rabeonline@proton.me";
    userName = "Max Rabe";
  };
}
