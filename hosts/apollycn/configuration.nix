{ ... }:

{
    imports = [ 
	      ./hardware-configuration.nix
   	    ../../homes/default.nix

    	  ../../modules/system/default.nix
    	  ../../modules/networking/default.nix
    	  ../../modules/hardware/default.nix
    	  ../../modules/desktop/default.nix
        ../../modules/environment/default.nix
    	  ../../modules/development/default.nix
    	  ../../modules/tools/default.nix
    	  ../../modules/services/default.nix
    	  ../../modules/security/default.nix	
    ];
    
    system.stateVersion = "25.05";
}

