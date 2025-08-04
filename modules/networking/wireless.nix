{ pkgs, ... }:

{
    networking.hostName = "apollycn";

    networking.wireless.iwd = {
	enable = true;
	settings = {
	    General = {
		EnableNetworkConfiguration = true;
	    };
	    Network = {
		EnableIPv6 = true;
	    };
	    Scan = {
		DisablePeriodicScan = true;
	    };
	};
    };

    environment.systemPackages = with pkgs; [
	iwgtk
	impala
    ];
}
