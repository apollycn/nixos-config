{ pkgs, ... }:

{
    # Power management daemon
    services.upower.enable = true;

    # D-Bus IPC system
    services.dbus = {
        enable = true;
        implementation = "broker";
        packages = with pkgs; [
            xfce.xfconf
            gnome2.GConf
        ];
    };

    # Music Player Daemon
    services.mpd.enable = true;

    # Thumbnail generator service
    services.tumbler.enable = true;

    # Firmware updater daemon
    services.fwupd.enable = true;

    # Automatic CPU frequency scaling
    services.auto-cpufreq.enable = true;
}
