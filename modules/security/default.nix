{ ... }:

{
    imports = [
	# ./clamav.nix
	./firewall.nix
	./mac-randomization.nix
	./sudo.nix
	./tpm2.nix
	./apparmor.nix
	./fail2ban.nix
	# ./firejail.nix
	./tools.nix
	# ./yubikey.nix
    ];
}
