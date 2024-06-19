{ config, pkgs, ... }:
{
  home.activation.generateLabwcMenu = config.lib.dag.entryAfter [ "writeBoundry" ] ''
    mkdir -p ${config.xdg.configHome}/labwc
    ${pkgs.labwc-menu-generator}/bin/labwc-menu-generator > ${config.xdg.configHome}/labwc/menu.xml
  '';
}
