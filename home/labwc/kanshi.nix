{ config, pkgs, ... }:
{
  services.kanshi = {
    enable = true;
    settings = [
      { 
        output = {
          criteria = "DP-1";
          mode = "2560x1440@239.957993Hz";
          adaptiveSync = true;
        };
      }
      {
        output = {
          criteria = "DP-2";
          mode = "1920x1080@60Hz";
          adaptiveSync = false;
        };
      }
      {
        profile = {
          name = "main-only";
          outputs = [ { criteria = "DP-1"; } ];
        };
      }
      {
        profile = {
          name = "both";
          outputs = [ { criteria = "DP-1"; } { criteria = "DP-2"; } ];
        };
      }
    ];
  };
}
