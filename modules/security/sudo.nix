{ pkgs, lib, ... }:

{
    security.sudo-rs = {
        enable = true;
        execWheelOnly = true;
    };
    security.sudo.enable = false;
    users.users.root.hashedPassword = "!";
}
