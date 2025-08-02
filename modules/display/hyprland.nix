{ inputs, pkgs, ... }: {
    wayland.windowManager.hyprland = {
	enable = true;
	xwayland.enable = true;
	systemd.enable = true;
	package = null;
	portalPackage = null;

	settings = {
	    "$mod" = "SUPER";
	    bind = [
		"$mod, F, exec, firefox"
	    ]
	    ++ (
		builtins.concatLists (builtins.getList (i:
		    let ws = i + 1;
		    in [
			"$mod, code:1${toString i}, workspace, ${toString ws}"
			"$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
		    ]
		) 9)
	    )
	};
    };
}
