{ inputs, pkgs, ... }: {
    programs.hyprland = {
	enable = true;
	package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
	portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
	xwayland.enable = true;
    };

    services.greetd = {
	enable = true;
	settings = {
	    default_session = {
		command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
		user = "leo";
	    };
	};
    };
}
