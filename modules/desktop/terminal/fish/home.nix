{ ... }:

{
    programs.fish = {
        enable = true;
        
        # Shell aliases
        shellAliases = {
            cl = "clear";
            rad = "rad-tui";
            ai = "aichat";
            ai-commit = "git diff --staged | ai -r commit-message | hx";
            ai-emoji-commit = "git diff --staged | ai -r emoji-commit-message | hx";
            ai-branch = "git diff --staged | ai -r git-branch | hx";
            ai-spell = "vipe | ai -r improve-writing | hx";
            ai-email = "vipe | ai -r email-answer | hx";
            ai-linkedin = "vipe | ai -r linkedin-answer | hx";
            aic = "ai-commit";
            aiec = "ai-emoji-commit";
            aib = "ai-branch";
            ais = "ai-spell";
            aie = "ai-email";
            ail = "ai-linkedin";
            lgit = "lazygit";
            ldocker = "lazydocker";
            conf = "z ~/.config";
            nixos = "z /etc/nixos";
            store = "z /nix/store";
            nswitch = "sudo nixos-rebuild switch --flake ~/nixos-config#apollycn";
            nswitchu = "sudo nix flake update --flake ~/nixos-config; and sudo nixos-rebuild switch --flake ~/nixos-config#apollycn --upgrade";
            nau = "sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos";
            nsgc = "sudo nix-store --gc";
            ngc = "sudo nix-collect-garbage -d";
            ngc7 = "sudo nix-collect-garbage --delete-older-than 7d";
            ngc14 = "sudo nix-collect-garbage --delete-older-than 14d";
            ll = "eza -la --icons --group-directories-first";
            lt = "eza -la --icons --tree --level=2";
            lg = "eza -la --icons --git";
            texwatch = "sh ~/notes/scripts/texwatch.sh";
            battery = "upower -i /org/freedesktop/UPower/devices/battery_BAT0";
        };

        # Interactive shell initialization
        interactiveShellInit = ''
            # VI mode cursor settings
            set fish_vi_force_cursor
            set fish_cursor_default block
            set fish_cursor_insert line blink
            set fish_cursor_visual underscore blink

            # Set VI key bindings
            set -g fish_key_bindings fish_vi_key_bindings

            # FZF color theme (Catppuccin-like)
            set -Ux FZF_DEFAULT_OPTS "\
            --color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
            --color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
            --color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

            # Fish color scheme (from fish_variables)
            set -g fish_color_autosuggestion 555 brblack
            set -g fish_color_cancel -r
            set -g fish_color_command blue
            set -g fish_color_comment red
            set -g fish_color_cwd green
            set -g fish_color_cwd_root red
            set -g fish_color_end green
            set -g fish_color_error brred
            set -g fish_color_escape brcyan
            set -g fish_color_history_current --bold
            set -g fish_color_host normal
            set -g fish_color_host_remote yellow
            set -g fish_color_normal normal
            set -g fish_color_operator brcyan
            set -g fish_color_param cyan
            set -g fish_color_quote yellow
            set -g fish_color_redirection cyan --bold
            set -g fish_color_search_match --background=111
            set -g fish_color_selection white --bold --background=brblack
            set -g fish_color_status red
            set -g fish_color_user brgreen
            set -g fish_color_valid_path --underline

            # Fish pager colors
            set -g fish_pager_color_completion normal
            set -g fish_pager_color_description B3A06D yellow -i
            set -g fish_pager_color_prefix cyan --bold --underline
            set -g fish_pager_color_progress brwhite --background=cyan
            set -g fish_pager_color_selected_background -r

            # Initialize shell integrations
            starship init fish | source
            direnv hook fish | source
        '';

        # Shell variables (environment variables)
        shellInit = ''
            # Set global environment variables
            set -gx EDITOR hx
            set -gx VOLUME_STEP 5
            set -gx BRIGHTNESS_STEP 5
            
            # Add paths to PATH
            set -gx PATH $HOME/.cargo/bin $PATH
            set -gx PATH $HOME/.npm-packages/bin $PATH
        '';
    
        # Custom functions
        functions = {
            autostart = builtins.readFile ./functions/autostart.fish;
            aichat_fish = builtins.readFile ./functions/aichat_fish.fish;
            airplane_mode_toggle = builtins.readFile ./functions/airplane_mode_toggle.fish;
            archive_preview = builtins.readFile ./functions/archive_preview.fish;
            autostart = builtins.readFile ./functions/autostart.fish;
            bluetooth_toogle = builtins.readFile ./functions/bluetooth_toggle.fish;
            bookmark_add = builtins.readFile ./functions/bookmark_add.fish;
            bookmark_remove = builtins.readFile ./functions/bookmark_remove.fish;
            bookmark_to_type = builtins.readFile ./functions/bookmark_to_type.fish;
            check_airplane_mode = builtins.readFile ./functions/check_airplane_mode.fish;
            check_geo_module = builtins.readFile ./functions/check_geo_module.fish;
            check_night_mode = builtins.readFile ./functions/check_night_mode.fish;
            check_recording = builtins.readFile ./functions/check_recording.fish;
            check_webcam = builtins.readFile ./functions/check_webcam.fish;
            clipboard_clear = builtins.readFile ./functions/clipboard_clear.fish;
            clipboard_delete_item = builtins.readFile ./functions/clipboard_delete_item.fish;
            clipboard_to_type = builtins.readFile ./functions/clipboard_to_type.fish;
            clipboard_to_wlcopy = builtins.readFile ./functions/clipboard_to_wlcopy.fish;
            dunst_pause = builtins.readFile ./functions/dunst_pause.fish;
            fetch_music_player_data = builtins.readFile ./functions/fetch_music_player_data.fish;
            fish_greeting = builtins.readFile ./functions/fish_greeting.fish;
            night_mode_temp_down = builtins.readFile ./functions/night_mode_temp_down.fish;
            night_mode_temp_up = builtins.readFile ./functions/night_mode_temp_up.fish;
            night_mode_toggle = builtins.readFile ./functions/night_mode_toggle.fish;
            record_screen_gif = builtins.readFile ./functions/record_screen_gif.fish;
            record_screen_mp4 = builtins.readFile ./functions/record_screen_mp4.fish;
            screenshot_edit = builtins.readFile ./functions/screenshot_edit.fish;
            screenshot_to_clipbaord = builtins.readFile ./functions/screenshot_to_clipboard.fish;
            wifi_toggle = builtins.readFile ./functions/wifi_toggle.fish;
            wlogout_unique = builtins.readFile ./functions/wlogout_unique.fish;
        };
    };
}
