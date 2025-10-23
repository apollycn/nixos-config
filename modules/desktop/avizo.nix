{ ... }:

{
    xdg.configFile."avizo/config.ini".text = ''
        [style]
        time = 1.0
        fade-in = 0.1
        fade-out = 0.2
        y-offset = 0.9
        x-offset = 0.5
        border-width = 2
        border-radius = 20
        shape = "bar"
        bar_direction = "horizontal"
        bar_smooth = true
        bar_width = 400
        bar_weight = 6
        bar_border_radius = 3
        background = rgba(30, 30, 46, 0.9)
        bar-bg-color = rgba(49, 50, 68, 1.0)
        bar-fg-color = rgba(137, 180, 250, 1.0)
        border-color = rgba(137, 180, 250, 1.0)
    '';
}
