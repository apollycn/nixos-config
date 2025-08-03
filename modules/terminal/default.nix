{ inputs, pkgs, ... }:

{
    imports = [
	./foot.nix
	./fish/default.nix
	./starship.nix
	./fastfetch.nix
    ];
}
