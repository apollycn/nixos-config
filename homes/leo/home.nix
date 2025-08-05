{ config, pkgs, ...  }:

{
    imports = [
    
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    home.packages = with pkgs; [
	spotify
	youtube-music
	discord
	tdesktop
	vscodium
	brave
    ];

    programs.home-manager.enable = true;
}
