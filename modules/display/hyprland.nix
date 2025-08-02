{ inputs, pkgs, ... }: {
    wayland.windowManager.hyprland = {
	enable = true;
	xwayland.enable = true;
	systemd.enable = true;
	package = null;
	portalPackage = null;
    };
}
