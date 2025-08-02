{ inputs, pkgs, ... }:

{
    imports =
	[
	    ./hyprland.nix
	    ./graphics.nix
            ./boot.nix
	    ./network.nix
	    ./sound.nix
	];

    time.timeZone = "America/New_York";

    services.printing.enable = true;

    services.libinput.enable = true;

    security.sudo.enable = true;

    programs.mtr.enable = true;
    programs.gnupg.agent = {
	enable = true;
	enableSSHSupport = true;
    services.openssh.enable = true;
}

