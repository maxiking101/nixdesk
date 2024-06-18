{ config, pkgs, inputs, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.max = {
      name = "max";
      #search.default = "DuckDuckGo";
      bookmarks = [
        { 
          name = "Toolbar"; 
          toolbar = true;
          bookmarks = [
            { 
              name = "Nix"; 
              bookmarks = [
                { name = "Home"; url = "https://nixos.org/"; }
                { name = "Wiki"; url = "https://wiki.nixos.org/"; }
                { name = "HM Options"; url = "https://home-manager-options.extranix.com/"; }
              ];
            }
            { name = "Proton Mail"; url = "https://mail.proton.me"; }
            { name = "YouTube"; url = "https://www.youtube.com"; }
            { name = "Twitch"; url = "https://www.twitch.tv"; }
          ];
        }
      ];
      settings = {
        "browser.toolbars.bookmarks.visibility" = "always";
        "browser.translations.neverTranslateLanguages" = "de";
        "extensions.getAddons.showPane" = false;
        "extensions.htmlaboutaddons.recommendations.enabled" = false;
        "extensions.pocket.enabled" = false;
        "identity.fxaccounts.enabled" = false;
        "privacy.trackingprotection.enabled" = true;
        "privacy.trackingprotection.socialtracking.enabled" = true;
        "extensions.autoDisableScopes" = 0;
      };
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        proton-pass
        ublock-origin
        clearurls
        consent-o-matic
        betterttv
      ];
    };
  };
}
