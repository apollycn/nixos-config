{ ... }:

{
    services.openssh = {
	      enable = true;
	      settings = {
	          PasswordAuthentication = false;
	          KbdInteractiveAuthentication = false;
	          PermitRootLogin = "no";
	          AllowUsers = [ "leo" ];
	      };
    };

    programs.ssh = {
        enable = true;
        matchBlocks = {
            "github.com" = {
                hostname = "github.com";
                user = "git";
                identityFile = "~/.ssh/github_ed25519";
            };
        };
    };
}
