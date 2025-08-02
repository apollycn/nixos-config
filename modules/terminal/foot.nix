{ inputs, pkgs, config, ... }:

let
    footConfig = ''
	shell=fish
    	title=foot
    	font=JetBrains Mono Nerd Font:size=12
    	letter-spacing=0
    	dpi-aware=no
    	pad=25x25
    	bold-text-in-bright=no
    	gamma-correct-blending=no

    	[scrollback]
    	lines=10000

    	[cursor]
    	style=beam
    	beam-thickness=1.5

    	[colors]
    	alpha=0.78

    	[key-bindings]
    	scrollback-up-page=Page_Up
    	scrollback-down-page=Page_Down
    	search-start=Control+Shift+f

    	[search-bindings]
    	cancel=Escape
    	find-prev=Shift+F3
    	find-next=F3 Control+G
    '';
in {
    programs.foot.enable = true;
    xdg.configFile."foot/foot.ini".text = if config.programs.foot.enable then footConfig else null;
}
