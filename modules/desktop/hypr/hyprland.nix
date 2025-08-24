{ ... }:

{
    wayland.windowManager.hyprland = {
        enable = true;
        
        settings = {
            # Monitor configuration
            monitor = [
                "eDP-1,preferred,auto,1.6"
                # "HDMI-A-1,preferred,auto-up,1.6"  # Comment out if not using external monitor
            ];

            # Workspace bindings (single monitor setup)
            workspace = [
                "1,monitor:eDP-1"
                "2,monitor:eDP-1"
                "3,monitor:eDP-1"
                "4,monitor:eDP-1"
                "5,monitor:eDP-1"
                "6,monitor:eDP-1"
                "7,monitor:eDP-1"
                "8,monitor:eDP-1"
                "9,monitor:eDP-1"
                "10,monitor:eDP-1"
                # External monitor workspaces - will be ignored if monitor not connected
                "11,monitor:HDMI-A-1"
                "12,monitor:HDMI-A-1"
                "13,monitor:HDMI-A-1"
                "14,monitor:HDMI-A-1"
                "15,monitor:HDMI-A-1"
                "16,monitor:HDMI-A-1"
                "17,monitor:HDMI-A-1"
                "18,monitor:HDMI-A-1"
                "19,monitor:HDMI-A-1"
                "20,monitor:HDMI-A-1"
            ];

            # Exec once
            exec-once = [
                "fish -c autostart"
                "pypr"
                "waybar"
            ];

            # Environment variables
            env = [
                "HYPRCURSOR_THEME,Catppuccin-Macchiato-Teal"
                "HYPRCURSOR_SIZE,24"
                "XCURSOR_THEME,Catppuccin-Macchiato-Teal"
                "XCURSOR_SIZE,24"
            ];

            # Input configuration
            input = {
                kb_layout = "us";
                follow_mouse = 1;
                touchpad = {
                    natural_scroll = true;
                    "tap-and-drag" = true;
                };
                sensitivity = 0;
            };

            # General settings
            general = {
                gaps_in = 5;
                gaps_out = 10;
                border_size = 2;
                layout = "dwindle";
                # Colors moved to extraConfig since they use variables
            };

            # Decoration settings
            decoration = {
                rounding = 10;
                blur = {
                    size = 8;
                    passes = 2;
                };
                shadow = {
                    enabled = true;
                    range = 5;
                    render_power = 2;
                    offset = "0, 0";
                    # Colors moved to extraConfig since they use variables
                };
                active_opacity = 0.7;
                inactive_opacity = 0.7;
                fullscreen_opacity = 0.7;
            };

            # Layer rules
            layerrule = [
                "blur, logout_dialog"
            ];

            # Animations
            animations = {
                enabled = true;
                bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
                animation = [
                    "windows, 1, 2, myBezier"
                    "windowsOut, 1, 2, default, popin 80%"
                    "border, 1, 3, default"
                    "fade, 1, 2, default"
                    "workspaces, 1, 1, default"
                ];
            };

            # Dwindle layout
            dwindle = {
                pseudotile = true;
                preserve_split = true;
                smart_split = true;
            };

            # Master layout
            master = {
                new_status = "master";
            };

            # Gestures
            gestures = {
                workspace_swipe = true;
            };

            # Misc settings
            misc = {
                disable_hyprland_logo = true;
                disable_splash_rendering = true;
                background_color = "0x24273a";
            };

            # Binds settings
            binds = {
                workspace_back_and_forth = true;
            };

            # Device configuration
            device = {
                name = "epic mouse V1";
                sensitivity = -0.5;
            };

            # Window rules
            windowrule = [
                "float, title:.*mpv$"
                "opaque, title:.*mpv$"
                "size 50% 50%, title:.*mpv$"
                "float, content:video"
                "opaque, content:video"
                "size 50% 50%, content:video"
                "float, title:.*imv.*"
                "opaque, title:.*imv.*"
                "size 70% 70%, title:.*imv.*"
                "float, content:photo"
                "opaque, content:photo"
                "size 70% 70%, content:photo"
                "float, title:.*\\.pdf$"
                "opaque, title:.*\\.pdf$"
                "maximize, title:.*\\.pdf$"
                "opaque, title:.*YouTube - Brave$"
                "opaque, title:swappy"
                "center 1, title:swappy"
                "stayfocused, title:swappy"
                "opaque, title:^TelegramDesktop$"
                "float, title:^wezterm_dropdown$"
                "float, title:^Volume Control$"
            ];

            # Main modifier key
            "$mainMod" = "SUPER";
            "$dropterm" = "title:^wezterm_dropdown$";
            "$volume_sidemenu" = "title:^Volume Control$";

            # Regular keybinds
            bind = [
                # Scratchpads
                "$mainMod CTRL, T, exec, pypr toggle term"
                "$mainMod CTRL, V, exec, pypr toggle volume"

                # Application binds
                "$mainMod CTRL, M, togglespecialworkspace, minimized"
                "$mainMod, M, exec, pypr toggle_special minimized"
                "$mainMod CTRL, E, exec, pypr expose"
                "$mainMod, Z, exec, pypr zoom"
                "$mainMod, T, exec, kitty"
                "$mainMod SHIFT, T, exec, Telegram"
                "$mainMod, B, exec, qutebrowser"
                "$mainMod SHIFT, B, exec, brave"
                "$mainMod, F, exec, thunar"
                "$mainMod, S, exec, spotify"
                "$mainMod, Y, exec, youtube-music"
                "$mainMod, D, exec, rofi -show drun"
                "$mainMod SHIFT, D, exec, firejail --apparmor discord"
                "$mainMod, ESCAPE, exec, fish -c wlogout_uniqe"
                "$mainMod SHIFT, L, exec, hyprlock"
                "$mainMod SHIFT, S, exec, fish -c screenshot_to_clipboard"
                "$mainMod, E, exec, fish -c screenshot_edit"
                "$mainMod SHIFT, R, exec, fish -c record_screen_gif"
                "$mainMod, R, exec, fish -c record_screen_mp4"
                "$mainMod, V, exec, fish -c clipboard_to_type"
                "$mainMod SHIFT, V, exec, fish -c clipboard_to_wlcopy"
                "$mainMod, X, exec, fish -c clipboard_delete_item"
                "$mainMod SHIFT, X, exec, fish -c clipboard_clear"
                "$mainMod, U, exec, fish -c bookmark_to_type"
                "$mainMod SHIFT, U, exec, fish -c bookmark_add"
                "$mainMod CTRL, U, exec, fish -c bookmark_delete"
                "$mainMod, C, exec, hyprpicker -a"
                "$mainMod SHIFT, C, exec, pypr menu \"Color picker\""
                "$mainMod SHIFT, Q, killactive"
                "$mainMod SHIFT, F, togglefloating"
                "$mainMod CTRL, F, fullscreen, 0"
                "$mainMod SHIFT, P, pseudo"
                "$mainMod SHIFT, O, togglesplit"
                "$mainMod ALT, M, exit"

                # System toggles
                "$mainMod SHIFT, A, exec, fish -c airplane_mode_toggle"
                "$mainMod SHIFT, N, exec, dunstctl set-paused toggle"
                "$mainMod SHIFT, Y, exec, fish -c bluetooth_toggle"
                "$mainMod SHIFT, W, exec, fish -c wifi_toggle"

                # Media controls
                "$mainMod, p, exec, playerctl play-pause"
                "$mainMod, bracketright, exec, playerctl next"
                "$mainMod, bracketleft, exec, playerctl previous"

                # Audio controls
                ", XF86AudioRaiseVolume, exec, volumectl -u up"
                ", XF86AudioLowerVolume, exec, volumectl -u down"
                ", XF86AudioMute, exec, volumectl toggle-mute"
                ", XF86AudioMicMute, exec, volumectl -m toggle-mute"

                # Brightness controls
                ", XF86MonBrightnessUp, exec, lightctl -D intel_backlight up"
                ", XF86MonBrightnessDown, exec, lightctl -D intel_backlight down"

                # Focus movement
                "$mainMod, left, movefocus, l"
                "$mainMod, right, movefocus, r"
                "$mainMod, up, movefocus, u"
                "$mainMod, down, movefocus, d"
                "$mainMod, h, movefocus, l"
                "$mainMod, l, movefocus, r"
                "$mainMod, k, movefocus, u"
                "$mainMod, j, movefocus, d"
                "$mainMod, Tab, cyclenext"
                "$mainMod, Tab, bringactivetotop"

                # Workspace switching - internal monitor
                "$mainMod, 1, workspace, 1"
                "$mainMod, 2, workspace, 2"
                "$mainMod, 3, workspace, 3"
                "$mainMod, 4, workspace, 4"
                "$mainMod, 5, workspace, 5"
                "$mainMod, 6, workspace, 6"
                "$mainMod, 7, workspace, 7"
                "$mainMod, 8, workspace, 8"
                "$mainMod, 9, workspace, 9"
                "$mainMod, 0, workspace, 10"

                # Workspace switching - external monitor
                "$mainMod ALT, 1, workspace, 11"
                "$mainMod ALT, 2, workspace, 12"
                "$mainMod ALT, 3, workspace, 13"
                "$mainMod ALT, 4, workspace, 14"
                "$mainMod ALT, 5, workspace, 15"
                "$mainMod ALT, 6, workspace, 16"
                "$mainMod ALT, 7, workspace, 17"
                "$mainMod ALT, 8, workspace, 18"
                "$mainMod ALT, 9, workspace, 19"
                "$mainMod ALT, 0, workspace, 20"

                # Move to workspace - internal monitor
                "$mainMod SHIFT, 1, movetoworkspace, 1"
                "$mainMod SHIFT, 2, movetoworkspace, 2"
                "$mainMod SHIFT, 3, movetoworkspace, 3"
                "$mainMod SHIFT, 4, movetoworkspace, 4"
                "$mainMod SHIFT, 5, movetoworkspace, 5"
                "$mainMod SHIFT, 6, movetoworkspace, 6"
                "$mainMod SHIFT, 7, movetoworkspace, 7"
                "$mainMod SHIFT, 8, movetoworkspace, 8"
                "$mainMod SHIFT, 9, movetoworkspace, 9"
                "$mainMod SHIFT, 0, movetoworkspace, 10"

                # Move to workspace - external monitor
                "$mainMod ALT SHIFT, 1, movetoworkspace, 11"
                "$mainMod ALT SHIFT, 2, movetoworkspace, 12"
                "$mainMod ALT SHIFT, 3, movetoworkspace, 13"
                "$mainMod ALT SHIFT, 4, movetoworkspace, 14"
                "$mainMod ALT SHIFT, 5, movetoworkspace, 15"
                "$mainMod ALT SHIFT, 6, movetoworkspace, 16"
                "$mainMod ALT SHIFT, 7, movetoworkspace, 17"
                "$mainMod ALT SHIFT, 8, movetoworkspace, 18"
                "$mainMod ALT SHIFT, 9, movetoworkspace, 19"
                "$mainMod ALT SHIFT, 0, movetoworkspace, 20"

                # Mouse workspace scrolling
                "$mainMod, mouse_down, workspace, e+1"
                "$mainMod, mouse_up, workspace, e-1"
            ];

            # Repeatable binds (binde)
            binde = [
            ];

            # Mouse binds
            bindm = [
                "$mainMod, mouse:272, movewindow"
                "$mainMod, mouse:273, resizewindow"
            ];
        };

        # Submaps in extraConfig to avoid key duplication issues
        extraConfig = ''
            # Source theme variables first, before using them
            source = ~/.config/hypr/macchiato.conf

            # Now set colors after variables are loaded
            general {
                col.active_border = $teal
                col.inactive_border = $surface1
            }

            decoration {
                shadow {
                    color = $teal
                    color_inactive = 0xff$baseAlpha
                }
            }

            # Resize submap
            bind = $mainMod ALT, R, submap, resize
            submap = resize
            binde = , right, resizeactive, 10 0
            binde = , left, resizeactive, -10 0
            binde = , up, resizeactive, 0 -10
            binde = , down, resizeactive, 0 10
            binde = , l, resizeactive, 10 0
            binde = , h, resizeactive, -10 0
            binde = , k, resizeactive, 0 -10
            binde = , j, resizeactive, 0 10
            bind = , escape, submap, reset
            submap = reset

            # Move submap
            bind = $mainMod ALT, M, submap, move
            submap = move
            bind = , right, movewindow, r
            bind = , left, movewindow, l
            bind = , up, movewindow, u
            bind = , down, movewindow, d
            bind = , l, movewindow, r
            bind = , h, movewindow, l
            bind = , k, movewindow, u
            bind = , j, movewindow, d
            bind = , escape, submap, reset
            submap = reset
        '';
    };
}
