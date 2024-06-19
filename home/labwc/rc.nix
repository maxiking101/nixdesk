{ config, pkgs, ... }:
{
  xdg.configFile."labwc/rc.xml" = {
    source = ./rc.xml;
    # onChange = "${pkgs.labwc}/bin/labwc --reconfigure";
  };
}
