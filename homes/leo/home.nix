{ config, pkgs, ...  }:

{
    imports = [
	../../modules/display/hyprland.nix
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    fonts.fontconfig.enable = true;

    home.packages = with pkgs; [	
	inter
	roboto
	ubuntu_font_family
	nerd-fonts.jetbrains-mono
	
	kitty
    ];

    programs.home-manager.enable = true;
}
