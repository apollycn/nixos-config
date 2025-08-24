{ ... }:

{
  # Enable spicetify from home-manager
  programs.spicetify = {
    enable = true;

    # Minimal setup
    theme = "catppuccin-mocha";
    colorScheme = "mocha";

    # Optional tweaks
    settings = {
      inject_css = true;
      replace_colors = true;
      overwrite_assets = true;
    };

    # You can also enable extensions if you want
    enabledExtensions = [];
  };
}
