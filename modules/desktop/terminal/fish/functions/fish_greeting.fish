function fish_greeting
    set_color blue
    echo " Distro:  NixOS"
    set_color white
    echo "󰅱 Langs:   Rust  JS 󰛦 TS  Python  Lua"
    set_color green
    echo " Shell:  󰈺 Fish"
    set_color yellow
    echo "󰟶 Mood:   👨‍💻"
    set_color cyan
    figlet random -f binary
    # clear
end
