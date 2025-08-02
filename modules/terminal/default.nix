{ inputs, pkgs, ... }:

{
    imports = [
	./foot.nix
	./fish.nix
	./starship.ni
    ];
}
