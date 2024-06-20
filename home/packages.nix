{ config, pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    macchina
    proton-pass
    labwc-menu-generator
    wlr-randr
    kanshi
    bandwhich
    dysk
    du-dust
    macchina
    unzip
    unar
    sops
    age
    rustscan
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pygobject3
    ]))
    gobject-introspection
    gtk3
  ];
}
