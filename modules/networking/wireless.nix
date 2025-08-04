{ inputs, pkgs, ... }:

{
    networking = {
	hostName = "apollycn";
	networkmanager.enable = true;
    };
}
