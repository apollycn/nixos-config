{ inputs, pkgs, ... }:

{
    programs.hyprland = {
	enable = true;
	withUWSM = true;
    };

    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

    programs.hyprlock.enable = true;
    services.hypridle.enable = true;

    environment.systemPackages = with pkgs; [
	pyprland
	hyprpicker
	hyprpicker
	hyprcursor
	hyprlock
	hypridle
	hyprpaper
	hyprpokitagent

	inputs.wezterm.packages.${pkgs.system}.default
	kitty
	cool-retro-term

	starship
	helix

	qutebrowser
	zathura
	mpv
	imv
    ];
}
