{ config, pkgs, ... }:
{
  xdg.configFile."labwc/environment" = {
    source = (pkgs.formats.keyValue {}).generate "labwc-environment" {
      "XKB_DEFAULT_LAYOUT" = "de";
      "WLR_DRM_NO_ATOMIC" = 1;
      "MOZ_ENABLE_WAYLAND" = 1;
      "WLR_NO_HARDWARE_CURSORS"=1;
      "NIXOS_OZONE_WL" = 1;
      "GBM_BACKEND" = "nvidia-drm";
      "LIBVA_DRIVER_NAME" = "nvidia";
      "__GLX_VENDOR_LIBRARY_NAME" = "nvidia";
      "XDG_SESSION_TYPE" = "wayland";
    };
    # onChange = "${pkgs.labwc}/bin/labwc --reconfigure";
  };
}
