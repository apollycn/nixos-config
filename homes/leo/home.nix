{ config, pkgs, ...  }:

{
    imports = [
    
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    programs.home-manager.enable = true;
}
