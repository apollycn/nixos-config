{
    programs.qutebrowser = {
        enable = true;
        
        # Load autoconfig equivalent
        loadAutoconfig = true;
        
        # Key bindings
        keyBindings = {
            normal = {
                "<Up>" = "scroll up";
                "<Down>" = "scroll down";
                "<Left>" = "scroll left";
                "<Right>" = "scroll right";
                "<Shift+Left>" = "back";
                "<Shift+Right>" = "forward";
                "<Shift+Down>" = "tab-next";
                "<Shift+Up>" = "tab-prev";
            };
        };
        
        extraConfig = ''
            import sys
            import os
            
            # Add catppuccin to Python path if needed
            # You might need to adjust this path based on where catppuccin is installed
            try:
                import catppuccin
                catppuccin.setup(c, 'macchiato')
            except ImportError:
                # Fallback if catppuccin is not available
                pass
        '';
    };
}
