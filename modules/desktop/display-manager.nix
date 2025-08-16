{ pkgs, ... }:

{
    services.greetd = {
	enable = true;
	settings = {
	    command = "${pkgs.greetd.tuigreet}/bin/tuigreet \
                --time --time-format '%I:%M %p | %a • %h | %F' \
          	--cmd 'uwsm start hyprland'";
	    user = "greeter";
	};
    };

    users.users.greeter = {
	isNormalUser = false;
	description = "greetd greeter user";
	extraGroups = [ "video" "audio" ];
	linger = true;
    };

    environment.systemPackages = with pkgs; [
	tuigreet
    ];
}
