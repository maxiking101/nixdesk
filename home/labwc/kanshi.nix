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
        profile = {
          name = "main-only";
          outputs = [ { criteria = "DP-1"; } ];
        };
      }
    ];
  };
}
