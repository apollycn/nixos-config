{
    description = "NixOS Configuration";
    
    inputs = {
	  		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	  		nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";
	
	  		home-manager = {
	      		url = "github:nix-community/home-manager";
	      		inputs.nixpkgs.follows = "nixpkgs";
	  		};

	  		hyprland.url = "github:hyprwm/Hyprland";
        spicetify-nix = {
            url = "github:Gerg-L/spicetify-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };
	  		# rust-overlay.url = "github:oxalica/rust-overlay";
        wezterm.url = "github:wez/wezterm?dir=nix";
        # radicle-tui.url = "git+https://seed.radicle.xyz/z39mP9rQAaGmERfUMPULfPUi473tY.git";
    };

    outputs = { self, nixpkgs, home-manager, spicetify-nix, ...}@inputs:
  	let 
	      system = "x86_64-linux";
	      mkSystem = hostname: username: nixpkgs.lib.nixosSystem {
		    		inherit system;
						specialArgs = { inherit inputs hostname username; };
						modules = [
		    				./hosts/${hostname}/configuration.nix
		
		    				home-manager.nixosModules.home-manager
		    				{
										home-manager = {
												backupFileExtension = "backup";
			    							useGlobalPkgs = true;
			    							useUserPackages = true;
			    							extraSpecialArgs = { inherit inputs hostname username; };
			    							users.${username} = import ./homes/${username}/home.nix;
										};
		    				}

		    				spicetify-nix.homeManagerModules.default
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
