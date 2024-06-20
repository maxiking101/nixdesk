{ config, pkgs, ... }:
{
  # Zsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    enableVteIntegration = true;
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
  };

  # Starship
  programs.starship.enable = true;

  # Eza
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    git = true;
    icons = true;
  };

  # Zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [ "--cmd cd" ];
  };

  # Helix
  programs.helix = {
    enable = true;
    defaultEditor = true;
  };

  # Bat
  programs.bat.enable = true;

  # Direnv
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  # Bottom
  programs.bottom.enable = true;
}