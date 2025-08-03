{ inputs, pkgs, ... }:

{
    programs.fastfetch = {
	enable = true;
	
	settings = {
	    logo = null;

	    modules = [
		"break"
		{
        	    type = "custom";
        	    key = "╭───────────────────────────────────╮";
      		}
      		{
        	    type = "kernel";
        	    key = "│ \u001b[38;5;16m \u001b[37m  kernel";
        	    format = "\u001b[38;5;16m{release>22}\u001b[37m │";
     	 	}
      		{
        	    type = "command";
        	    key = "│   uptime";
        	    text = "uptime -p | cut -d ' ' -f 2-";
        	    format = "{>22} │";
      		}
      		{
        	    type = "shell";
        	    key = "│ \u001b[38;5;16m \u001b[37m  shell ";
        	    format = "\u001b[38;5;16m{pretty-name>22}\u001b[37m │";
      		}
      		{
        	    type = "command";
        	    key = "│ \u001b[38;5;17m \u001b[37m  mem   ";
		    text = "free -m | awk 'NR==2{printf \"%.2f GiB / %.2f GiB\",$3/1024,$2/1024}'";
                    format = "\u001b[38;5;17m{>22}\u001b[37m │";
      		}
      		{
        	    type = "packages";
        	    key = "│   pkgs  ";
                    format = "{all>22} │";
      		}
      		{
        	    type = "command";
        	    key = "│ \u001b[38;5;16m\u001b[37m  user  ";
        	    text = "echo $USER";
        	    format = "\u001b[38;5;16m{>22}\u001b[37m │";
      		}
      		{
        	    type = "command";
        	    key = "│   hname ";
        	    text = "hostnamectl hostname";
        	    format = "{>22} │";
      		}
      		{
        	    type = "os";
        	    key = "│ \u001b[38;5;18m󰻀\u001b[37m  distro";
        	    format = "\u001b[38;5;18m{pretty-name>22}\u001b[37m │";
      		}
      		{
        	    type = "custom";
           	    key = "╰───────────────────────────────────╯";
      		}
      		"break"
    	    ];
	};
    };
}
