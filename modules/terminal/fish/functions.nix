{ pkgs, lib, ... }:

{
    ff = ''
	find . -type f -iname "*$argv*" 2>/dev/null
    '';

    fd = ''
	find . -type d -iname "*$argv*" 2>/dev/null
    '';

    gac = ''
	if test (count $argv) -eq 0
      	    echo "Usage: gcom <commit message>"
      	    return 1
    	end
    	git add . && git commit -m "$argv"
    '';

    backup = ''
    	if test (count $argv) -ne 1
      	    echo "Usage: backup <file>"
      	    return 1
    	end
    	cp $argv[1] $argv[1].bak.(date +%Y%m%d_%H%M%S)
    '';

    du-here = ''
    	du -h --max-depth=1 . | sort -hr
    '';

    weather = ''
    	if test (count $argv) -eq 0
      	    curl -s "wttr.in/?format=3"
    	else
      	    curl -s "wttr.in/$argv[1]?format=3"
    	end
    '';
}
