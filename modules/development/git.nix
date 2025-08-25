{
  # Git configuration with Delta
  programs.git = {
    enable = true;
    userName = "apollycn"; # Change this to your actual name
    userEmail = "apollycn@gmail.com"; # Change this to your email

    # Git aliases for convenience
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      ci = "commit";
      ca = "commit -a";
      cm = "commit -m";
      cam = "commit -am";
      lg = "log --oneline --graph --all --decorate";
      unstage = "reset HEAD --";
      last = "log -1 HEAD";

      # Useful for note-taking workflow
      note = "!git add . && git commit -m 'Update notes'";
      sync = "!git pull && git push";
      quick = "!git add . && git commit -m 'Quick save' && git push";
    };

    # Delta for beautiful diffs
    delta = {
      enable = true;
      options = {
        navigate = true;
        light = false; # Set to true if you use light theme
        side-by-side = true;
        line-numbers = true;
        syntax-theme = "Dracula"; # Options: Dracula, GitHub, Monokai Extended, etc.
        features = "decorations";
        decorations = {
          commit-decoration-style = "bold yellow box ul";
          file-decoration-style = "none";
          file-style = "bold yellow ul";
        };
        whitespace-error-style = "22 reverse";
      };
    };

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      push.default = "simple";
      push.autoSetupRemote = true; # Auto-setup remote tracking

      core = {
        editor = "hx"; # Use Helix as editor
        autocrlf = "input"; # For Linux/macOS
      };

      merge = {
        conflictstyle = "diff3";
      };

      color = {
        ui = "auto";
      };

      # Useful for rebasing
      rebase = {
        autosquash = true;
        autostash = true;
      };

      # Better log formatting
      log = {
        date = "relative";
      };

      credential.helper = "store";
    };
  };
}
