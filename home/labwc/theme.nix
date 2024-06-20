{ config, pkgs, lib, ... }:
{
  xdg.dataFile."themes/Stylix/openbox-3/themerc" = {
    source = (pkgs.formats.keyValue { mkKeyValue = lib.generators.mkKeyValueDefault {} ": ";}).generate "labwc-themerc" {
      "border.width" = 1;
      "padding.height" = 3;
      "window.active.title.bg.color" =  config.lib.stylix.colors.withHashtag.base01;
      "window.inactive.title.bg.color" = config.lib.stylix.colors.withHashtag.base00;
      "window.active.label.text.color" = "#ffffff";
      "window.inactive.label.text.color" = config.lib.stylix.colors.withHashtag.base05;
      "window.active.border.color" = config.lib.stylix.colors.withHashtag.base03;
      "window.inactive.border.color" = config.lib.stylix.colors.withHashtag.base00;
      "window.active.button.unpressed.image.color" = "#ffffff";
      "window.inactive.button.unpressed.image.color" = config.lib.stylix.colors.withHashtag.base05;
      "menu.items.bg.color" = config.lib.stylix.colors.withHashtag.base01;
      "menu.items.text.color" = config.lib.stylix.colors.withHashtag.base05;
      "menu.items.active.bg.color" = config.lib.stylix.colors.withHashtag.base08;
      "menu.items.active.text.color" = config.lib.stylix.colors.withHashtag.base05;
      "osd.bg.color" = config.lib.stylix.colors.withHashtag.base02;
      "osd.border.color" = config.lib.stylix.colors.withHashtag.base08;
      "osd.label.text.color" = config.lib.stylix.colors.withHashtag.base05;
    };
    # onChange = "${pkgs.labwc}/bin/labwc --reconfigure";
  };
}
