{ pkgs, ... }:

{
  programs.spicetify = {
    enable = true;

    # Theme configuration
    theme = {
      name = "catppuccin";
      src = pkgs.fetchFromGitHub {
        owner = "catppuccin";
        repo = "spicetify";
        rev = "v1.2.0";
        sha256 = "sha256-example"; # Replace with actual hash
      };
      # Optional: specify color scheme for multi-scheme themes
      colorScheme = "mocha";
    };

    # Extensions
    extensions = [
      {
        name = "shuffle+.js";
        src = pkgs.fetchFromGitHub {
          owner = "spicetify";
          repo = "spicetify-extensions";
          rev = "main";
          sha256 = "sha256-example"; # Replace with actual hash
        };
      }
    ];

    # Custom apps
    customApps = [
      {
        name = "lyrics-plus";
        src = pkgs.fetchFromGitHub {
          owner = "spicetify";
          repo = "spicetify-custom-apps";
          rev = "main";
          sha256 = "sha256-example"; # Replace with actual hash
        };
      }
    ];

    # Enable dev tools
    enabledExtensions = [
      "shuffle+"
      "keyboardShortcut"
      "fullAppDisplay"
    ];

    # CSS modifications
    extraConfig = ''
      [Setting]
      spotify_launch_flags = --disable-gpu
      prefs_path = ~/.config/spotify/prefs
    '';
  };
}
