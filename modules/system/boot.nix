{ input, pkgs, ... }:

{
    boot.loader = {
	systemd-boot.enable = true;
	efit.canTouchEfiVariables = true;
    };
}
