{ inputs, pkgs, ... }:

{
    services.pipwire = {
	enable = true;
	pulse.enable = true;
    };
}
