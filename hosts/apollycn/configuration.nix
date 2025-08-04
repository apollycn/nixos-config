{ config, lib, pkgs, ... }:

{
    imports =
	[ 
    	    ./hardware-configuration.nix
	    ../../modules/system/default.nix
	    ../../homes/default.nix
        ];
   
    system.stateVersion = "25.05";
}

