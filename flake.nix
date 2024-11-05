{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.apollyon = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        hosts/apollyon/configuration.nix
      ];
    };

    nixosConfigurations.solvyrn = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
	hosts/solvyrn/configuration.nix
      ];
    };
  };
}
