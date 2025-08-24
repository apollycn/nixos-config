{ ... }:

{
    programs.kitty = {
        enable = true;

        settings = {
            # Fonts
            font_family       = "JetBrains Mono";
            bold_font         = "JetBrains Mono Bold";
            italic_font       = "JetBrains Mono Italic";
            bold_italic_font  = "JetBrains Mono Bold Italic";
            font_size         = "12.0";

            # Symbols / Nerd Fonts
            symbol_map = [
                "U+E0A0-U+E0A3,U+E0C0-U+E0C7 PowerlineSymbols"
                "U+e000-U+e00a,U+ea60-U+ebeb,U+e0a0-U+e0c8,U+e0ca,U+e0cc-U+e0d7,U+e200-U+e2a9,U+e300-U+e3e3,U+e5fa-U+e6b1,U+e700-U+e7c5,U+ed00-U+efc1,U+f000-U+f2ff,U+f000-U+f2e0,U+f300-U+f372,U+f400-U+f533,U+f0001-U+f1af0 Symbols Nerd Font Mono"
            ];

            # Cursor
            cursor_shape                  = "block";
            cursor_blink_interval         = "0.8 linear";
            cursor_trail                  = "10";
            cursor_trail_decay            = "0.1 0.3";
            cursor_trail_start_threshold  = "0";
            shell_integration             = "no-cursor";

            # Colors
            foreground              = "#cad3f5";
            background              = "#24273a";
            selection_foreground    = "#24273a";
            selection_background    = "#f4dbd6";

            cursor                  = "#f4dbd6";
            cursor_text_color       = "#24273a";

            url_color               = "#f4dbd6";

            active_border_color     = "#b7bdf8";
            inactive_border_color   = "#6e738d";
            bell_border_color       = "#eed49f";

            wayland_titlebar_color  = "system";
            macos_titlebar_color    = "system";

            active_tab_foreground   = "#181926";
            active_tab_background   = "#c6a0f6";
            inactive_tab_foreground = "#cad3f5";
            inactive_tab_background = "#1e2030";
            tab_bar_background      = "#181926";

            mark1_foreground        = "#24273a";
            mark1_background        = "#b7bdf8";
            mark2_foreground        = "#24273a";
            mark2_background        = "#c6a0f6";
            mark3_foreground        = "#24273a";
            mark3_background        = "#7dc4e4";

            # 16 terminal colors
            color0  = "#494d64";
            color8  = "#5b6078";
            color1  = "#ed8796";
            color9  = "#ed8796";
            color2  = "#a6da95";
            color10 = "#a6da95";
            color3  = "#eed49f";
            color11 = "#eed49f";
            color4  = "#8aadf4";
            color12 = "#8aadf4";
            color5  = "#f5bde6";
            color13 = "#f5bde6";
            color6  = "#8bd5ca";
            color14 = "#8bd5ca";
            color7  = "#b8c0e0";
            color15 = "#a5adcb";
        };

        keybindings = {
            "kitty_mod+/" = "launch --location=hsplit --allow-remote-control kitty +kitten search.py @active-kitty-window-id";
        };
    };
}

