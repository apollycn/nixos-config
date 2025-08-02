{ inputs, pkgs, ... }:

{
    users.users.leo = {
	isNormalUser = true;
	extraGroups = [ "wheel" "networkmanager" ];
	hashedPasswordFile = "/etc/nixos/leo-password.txt";
    };
}
