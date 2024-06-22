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
      { directory = ".local/state/wireplumber"; method = "symlink"; }
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
