{ pkgs, lib, ... }:

{
    security.apparmor = {
        enable = true;
        killUnconfinedConfinables = true;
        packages = with pkgs; [
            apparmor-utils
            apparmor-profiles
        ];
    };

    security.pam.services = {
        login.enableAppArmor = true;
        sshd.enableAppArmor = true;
        sudo-rs.enableAppArmor = true;
        su.enableAppArmor = true;
        greetd.enableAppArmor = true;
        u2f.enableAppArmor = true;
    };

    services.dbus.apparmor = "enabled";
}
