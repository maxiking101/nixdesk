{ config, pkgs, ... }:
{
  home.persistence."/persist/home/max" = {
    directories = [
      "Downloads"
      "Music"
      "Pictures"
      "Documents"
      "Videos"
      "VirtualBox VMs"
      ".gnupg"
      ".ssh"
      ".nixops"
      ".local/share/keyrings"
      ".local/share/direnv"
      {
       directory = ".local/share/Steam";
        method = "symlink";
      }
      ".config/cosmic"
      ".config/Proton Pass"
      ".cache/mozilla/firefox/max"
      ".mozilla/firefox/max"
      ".config/pulse"
    ];
    files = [
      ".screenrc"
      ".config/labwc/menu.xml"
      ".bash_history"
      ".zsh_history"
    ];
        allowOther = true;
  };
}
