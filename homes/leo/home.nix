{ config, pkgs, ...  }:

{
    imports = [
	../../modules/display/hyprland.nix
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    home.packages = with pkgs; [
    	
    ];

    fonts.fontconfig.enable = true;
    home.packages = with pkgs; [
	(nerdfonts.override { fonts = ["FiraCode" "JetBrainsMono" "Melso" ]; })
	inter
	roboto
	ubuntu_font_family
    ];

    programs.home-manager.enable = true;
}
