{ inputs, pkgs, ... }:

{
    imports = [
	./foot.nix
	./fish.nix
	./starship.nix
    ];
}
