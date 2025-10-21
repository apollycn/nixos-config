{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # Accessibility / UI integration
        # at-spi2-atk
        # qt6.qtwayland
        # xdg-utils

        # Power / status notifications
        psi-notify
        poweralertd

        # Media control
        playerctl

        # Process utilities
        # psmisc

        # Screenshots / screen recording
        # grim
        # slurp
        # swappy
        # wl-screenrec

        # Image / video editing
        # imagemagick
        # gifsicle
        # ffmpeg_6-full

        # Clipboard tools
        # wl-clipboard
        # wl-clip-persist
        # cliphist

        # Wayland utilities
        wtype
        wlrctl

        # UI components
        waybar
        rofi
        dunst
        avizo
        wlogout
    ];
}
