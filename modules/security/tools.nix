{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        pass-wayland   # Password manager integration for Wayland
        pass2csv       # Export pass passwords to CSV
        passExtensions.pass-tomb  # Pass extension for tomb integration
        passExtensions.pass-update
        passExtensions.pass-otp
        passExtensions.pass-import
        passExtensions.pass-audit
        tomb           # Encrypted storage for secrets
        pwgen-secure   # More secure password generator
    ];
}
