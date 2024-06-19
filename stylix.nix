{ config, pkgs, ... }:
{
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url = "https://0x0.st/XTAi.png";
      sha256 = "sha256-UKSSmpFzl/n/zmVz7UA6g/V/Y+R/XqZehWV3mqY2zAc=";
    };
    polarity = "dark";
    fonts = {
      monospace = {
        name = "CaskaydiaCove Nerd Font";
        package = pkgs.nerdfonts;
      };
      sansSerif = {
        name = "Ubuntu Nerd Font";
        package = pkgs.nerdfonts;
      };
    };
  };
}