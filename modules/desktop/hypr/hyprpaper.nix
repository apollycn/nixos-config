{ ... }:

{
    services.hyprpaper = {
        enable = true;

        settings = {
            splash = false;
            ipc = false;

            preload = [
                "~/Downloads/background"
            ];

            wallpaper = [
                ",~/Downloads/background"
            ];
        };
    };   
}
