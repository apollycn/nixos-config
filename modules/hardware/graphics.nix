{ pkgs, inputs, ... }: 

let
    pkgs-unstable = inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
    nixpkgs.config.packageOverrides = pkgs: {
	      intel-vaapi-driver = pkgs.intel-vaapi-driver.override { enableHybridCodec = true; };
    };

    hardware.graphics = {
	      enable = true;
	      enable32Bit = true;

	      package = pkgs-unstable.mesa;
	      package32 = pkgs-unstable.pkgsi686Linux.mesa;

	      extraPackages = with pkgs; [
      	    intel-compute-runtime
      	    intel-media-driver    # LIBVA_DRIVER_NAME=iHD
      	    intel-vaapi-driver    # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
      	    vaapiVdpau
      	    libvdpau-va-gl
    	  ];
    	  extraPackages32 = with pkgs.pkgsi686Linux; [
      	    intel-media-driver
            intel-vaapi-driver
      	    vaapiVdpau
            libvdpau-va-gl
    	  ];
    };

    environment.systemPackages = with pkgs; [
        mesa
        libglvnd
    ];
}
