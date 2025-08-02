{
    description = "NixOS Configuration";
    
    inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	
	home-manager = {
	    url = "github:nix-community/home-manager";
	    inputs.nixpkgs.follows = "nixpkgs";
	};

	nixos-hardware.url = "github:NixOs/nixos-hardware/master";
	
	sops-nix = {
	    url = "github:Mic92/sops-nix";
	    inputs.nixpkgs.follows = "nixpkgs";
	};

	hyprland.url = "github:hyprwm/Hyprland";
    };

    outputs = { self, nixpkgs, home-manager, nixos-hardware, sops-nix, ...}@inputs:
	let 
	    system = "x86_64-linux";
	    mkSystem = hostname: username: nixpkgs.lib.nixosSystem {
		inherit system;
		specialArgs = { inherit inputs hostname username; };
		modules = [
		    ./hosts/${hostname}/configuration.nix

		    sops-nix.nixosModules.sops
		
		    home-manager.nixosModules.home-manager
		    {
			home-manager = {
			    useGlobalPkgs = true;
			    useUserPackages = true;
			    extraSpecialArgs = { inherit inputs hostname username; };
			    users.${username} = import ./homes/${username}/home.nix;
			};
		    }
		];
	    };
	in
	{
	    nixosConfigurations = {
		"apollycn" = mkSystem "apollycn" "leo";
		"solvyrn" = mkSystem "solvyrn" "leo";
	    };
		
	    formatter.${system} = nixpkgs.legacyPackages.${system}.nixfmt-tree;
	};  
}
