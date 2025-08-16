{ ... }:

{
    imports = [ 
	./hardware-configuration.nix
	../../homes/default.nix
	
	../../modules/system/default.nix
	../../modules/networking/default.nix
	../../modules/hardware/default.nix
	../../modules/desktop/default.nix
    ];
    
    system.stateVersion = "25.05";
}

