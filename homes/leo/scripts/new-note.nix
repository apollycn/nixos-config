{ pkgs, ... }:

{
    home.pkgs = [
        (pkgs.writeShellScriptBin "new-note" (builtins.readFile ./new-note.sh))
    ];
}
