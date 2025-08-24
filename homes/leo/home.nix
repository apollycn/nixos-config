{ pkgs, ...  }:

{
    imports = [
        ../../modules/desktop/hypr/home.nix
            
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    home.packages = with pkgs; [
	      git
	      vim
	      firefox
    ];

    programs.home-manager.enable = true;
}
