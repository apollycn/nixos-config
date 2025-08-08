{ pkgs, ... }:

{
    users.users.leo = {
	isNormalUser = true;
	extraGroups = [ 
	    "wheel" 
	    "networkmanager" 
	    "input"  
	    "video"
	    "audio"
	    "tss"
	];
	# shell = pkgs.fish;
	hashedPassword = "";
    };
}
