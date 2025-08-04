{ pkgs, ... }:

{
    # Scheduled auto upgrade system (this is only for system upgrades, 
    # if you want to upgrade cargo\npm\pip global packages, docker containers or different part of the system 
    # or get really full system upgrade, use `topgrade` CLI utility manually instead.
    # I recommend running `topgrade` once a week or at least once a month)
    system.autoUpgrade = {
	enable = true;
	operation = "switch";
	flake = "~/nixos-config";
	flags = [
	    "--update-input" "nixpkgs"
	    "--update-input" "rust-overlay"
	    "--commit-lock-file"
	];
	dates = "weekly";
    };

    nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 14d";
    };

    nix.optimise.automatic = true;
    nix.settings.auto-optimize-store = true;

    environment.systemPackages = with pkgs; [
	topgrade
    ];
}
