{ inputs, pkgs, ... }:

{
    imports = [
	./foot.nix
	./fish.nix
	./starship.nix
	./fastfetch.nix
    ];
}
