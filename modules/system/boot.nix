{ pkgs, ... }:

{
    boot.loader = {
	systemd-boot.enable = true;
	efi.canTouchEfiVariables = true;
	timeout = 10;
    };

    boot.initrd = {
	enable = true;
	verbose = false;
	systemd.enable = true;
	availableKernelModules = [ 
	    "xhci_pci"
	    "ehci_pci"
	    "ahci"
	    "usbhid"
	    "usb_storage"
	    "sd_mod"
	    "i915"
	];
	kernelModules = [ "i915" ];
    };

    boot.consoleLogLevel = 3;
    
    #boot.plymouth = {
    # 	enable = true;
    #	font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono.Regular.ttf";
    #	themePackages = [ pkgs.catppuccin-plymouth ];
    #	theme = "catppuccin-macchiato";
    #};
}
