{ config, pkgs, ... }:
{
  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;
  boot.kernelParams = [ "nvidia_drm.fbdev=1" ];
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
