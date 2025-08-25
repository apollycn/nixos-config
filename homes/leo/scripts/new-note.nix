{ pkgs, ... }:

{
    home.packages = [
        (pkgs.writeShellScriptBin "new-note" (builtins.readFile ./new-note.sh))
    ];
}
