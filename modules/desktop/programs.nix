{ pkgs, ... }:

{
    # Fish shell
    programs.fish.enable = true;

    # Per-directory environment variable loader
    programs.direnv.enable = true;

    # File manager
    programs.thunar.enable = true;

    # Xfce configuration system
    programs.xfconf.enable = true;
}
