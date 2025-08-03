{ pkgs, lib, ... }:

{
    programs.fish = {
	enable = true;

	shellAliases = import ./aliases.nix;
	functions = import ./functions.nix { inherit pkgs lib; };

	shellInit = ''
	    set -g fish_greeting
	    fish_vi_key_bindings
	'';
	
	interactiveShellInit = ''
	    starship init fish | source

	    function mark_prompt_start --on-event fish_prompt
      		echo -en "\e]133;A\e\\"
  	    end
	'';
    };
}
