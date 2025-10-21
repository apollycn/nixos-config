{ pkgs, ... }:

{
    # Enable Kasm
    # services.kasmweb = {
    #     enable = true;
    #     listenPort = 9999;
    # };

    # Enable Containerd
    # virtualisation.containerd.enable = true;

    # Enable Docker
    virtualisation.docker = {
        enable = true;
        rootless = {
            enable = true;
            setSocketVariable = true;
            daemon.settings.features.cdi = true;
        };
    };
    users.extraGroups.docker.members = [ "leo" ];


    # Enable Podman
    # virtualisation.podman = {
    # 	enable = true;
    	# Create a `docker` alias for podman, to use it as a drop-in replacement
    #	dockerCompat = true;
    #	dockerSocket.enable = true;

    	# Required for containers under podman-compose to be able to talk to each other.
    #	defaultNetwork.settings.dns_enabled = true;
    #};
    environment.variables.DBX_CONTAINER_MANAGER = "docker";
    users.extraGroups.podman.members = [ "leo" ];

    environment.systemPackages = with pkgs; [
    	# nerdctl

    	# firecracker
    	# firectl
    	# flintlock

    	# distrobox
    	# qemu

    	# podman-compose
    	# podman-tui

    	docker-compose
    	lazydocker
    	# docker-credential-helpers
    ];
}
