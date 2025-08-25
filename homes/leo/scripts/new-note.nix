{ pkgs, ... }:

{
    home.pkgs = [
        (pkgs.writeShellScriptsBin "new-note" (builtins.readFile ./new-note.sh))
    ];
}
