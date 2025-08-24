{ ... }:

{
    services.hyprpaper = {
        enable = true;

        settings = {
            splash = false;
            ipc = false;

            preload = [
                "~/nixos-config/modules/desktop/hypr/assets/background"
            ];

            wallpaper = [
                ",~/nixos-config/modules/desktop/hypr/assets/background"
            ];
        };
    };   
}
