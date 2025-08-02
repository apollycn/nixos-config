{ inputs, pkgs, ... }:

{
    programs.fish = {
	enable = true;
	
	interactiveShellInit = ''
	    starship init fish | source

  	    function fish_greeting
      		echo -ne '\x1b[38;5;16m'
      		echo '  ___              _ _                  '
      		echo ' / _ \            | | |                 '
      		echo '/ /_\ \_ __   ___ | | |_   _  ___ _ __  '
      		echo '|  _  | '_ \ / _ \| | | | | |/ __| '_ \ '
      		echo '| | | | |_) | (_) | | | |_| | (__| | | |'
      		echo '\_| |_/ .__/ \___/|_|_|\__, |\___|_| |_|'
      		echo '      | |               __/ |           '
      		echo '      |_|              |___/            '
      		set_color normal
      		fastfetch --key-padding-left 5
  	    end

	    function mark_prompt_start --on-event fish_prompt
      		echo -en "\e]133;A\e\\"
  	    end
	'';
    };
}
