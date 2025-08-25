{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        file
        git
        lazygit
        delta
        license-generator
        process-compose
        progress
        noti
        ripgrep
        procs
        tealdeer
        bat
        rsclock
        cava
        unzip
        eza
        texlive.combined.scheme-medium
        glow
        fzf
        calibre
    ];
}
