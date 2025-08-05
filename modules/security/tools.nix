{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vulnix         # Vulnerability scanner for system packages
        clamav         # Antivirus command-line tool
        chkrootkit     # Rootkit detection tool

        pass-wayland   # Password manager integration for Wayland
        pass2csv       # Export pass passwords to CSV
        passExtensions.pass-tomb  # Pass extension for tomb integration
        passExtensions.pass-update
        passExtensions.pass-otp
        passExtensions.pass-import
        passExtensions.pass-audit
        tomb           # Encrypted storage for secrets
        pwgen          # Password generator
        pwgen-secure   # More secure password generator
    ];
}
