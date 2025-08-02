{ config, lib, pkgs, ... }:

{
    imports =
	[ 
    	    ./hardware-configuration.nix
	    ../../modules/system/default.nix
	    ../../homes/default.nix
        ];
   
    environment.systemPackages = with pkgs; [
	vim
        wget
        git
        firefox
    ];
 
    system.stateVersion = "25.05";
}

