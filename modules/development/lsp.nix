{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
    	python313Packages.python-lsp-server
    	nodePackages_latest.nodemon
    	nodePackages_latest.typescript
    	nodePackages_latest.typescript-language-server
    	nodePackages_latest.vscode-langservers-extracted
    	nodePackages_latest.yaml-language-server
    	nodePackages_latest.dockerfile-language-server-nodejs
    	nodePackages_latest.bash-language-server
    	sumneko-lua-language-server
    	marksman
        markdown-oxide
    	nil
    	emmet-language-server
    	docker-compose-language-service
    	vscode-extensions.vadimcn.vscode-lldb
    	hyprls
    	jdk11
	helix-gpt
    ]; 
}
