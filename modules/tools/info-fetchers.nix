{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
    	neofetch
    	htop
    	bottom

    	vulkan-tools
    	# opencl-info
    	# clinfo
    	# vdpauinfo
    	# libva-utils
    	nvtopPackages.intel
    	wlr-randr
    	gpu-viewer
    	dig
    	speedtest-rs
    ];
}
