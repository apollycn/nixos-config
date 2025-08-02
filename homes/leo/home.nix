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
    ];

    programs.home-manager.enable = true;
}
