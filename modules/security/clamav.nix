{ ... }:

{
    # Weekly antivirus scanner
    services.clamav.scanner = {
	enable = true;
	interval = "Sat *-*-* 04:00:00";
    };

    services.clamav = {
	daemon.enable = true;
	fangfrisch.enable = true;
	fangfrisch.interval = "daily";
	updater.enable = true;
	updater.interval = "daily";
	updater.frequency = 12;
    };
}
