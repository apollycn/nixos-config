{ inputs, pkgs, ... }: {
    wayland.windowManager.hyprland = {
	enable = true;
	xwayland.enable = true;
	systemd.enable = true;
	package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
	portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;

	settings = {
	    "$mod" = "SUPER";
	    bind = [
		"$mod, F, exec, firefox"
		"$mod, T, exec, kitty"
	    ]
	    ++ (
		builtins.concatLists (builtins.genList (i:
		    let ws = i + 1;
		    in [
			"$mod, code:1${toString i}, workspace, ${toString ws}"
			"$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
		    ]
		) 9)
	    );
	};
    };
}
