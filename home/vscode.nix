{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = [ pkgs.vscode-extensions.jnoortheen.nix-ide ];
  };
  stylix.targets.vscode.enable = false;
}
