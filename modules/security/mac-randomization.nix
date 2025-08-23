{ pkgs, ... }:

{
    systemd.services.macchanger = {
	enable = true;
	description = "Change MAC adress";
	wantedBy = [ "multi-user.target" ];
	after = [ "network.target" ];
	serviceConfig = {
	    Type = "oneshot";
	    ExecStart = "${pkgs.macchanger}/bin/macchanger -r wlan0";
      	    ExecStop = "${pkgs.macchanger}/bin/macchanger -p wlan0";
      	    RemainAfterExit = true;
        };
    };
}
