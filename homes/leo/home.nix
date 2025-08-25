{ pkgs, ...  }:

{
    imports = [
        ./scripts/home.nix
        
        ../../modules/desktop/home.nix    
        ../../modules/development/home.nix
        ../../modules/services/home.nix        
        ../../modules/security/home.nix
    ];

    home.username = "leo";
    home.homeDirectory = "/home/leo";
    home.stateVersion = "24.05";

    home.packages = with pkgs; [
	      git
	      vim
    ];

    programs.home-manager.enable = true;
}
