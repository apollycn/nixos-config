{ ... }:

{
    # Weekly antivirus scanner
    services.clamav.scanner = {
	enable = true;
	interval = "Sat *-*-* 04:00:00";
    };
    services.clamav.updater.enable = true;
}
