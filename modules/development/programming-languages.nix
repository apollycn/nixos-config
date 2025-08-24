{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
    	(python313Full.withPackages(ps: with ps; [ pygobject3 gobject-introspection pyqt6-sip catppuccin ]))
    	uv
    	nodePackages_latest.nodejs
    	nodePackages_latest.pnpm
    	bun
    	lua
    ];
}
