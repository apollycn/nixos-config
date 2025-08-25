{ pkgs, ... }:

{
    home.pkgs = [
        (pkgs.writeShellScriptsBin "new-note" (builtins.readFile ~/notes/scripts/new-note.sh))
    ];
}
