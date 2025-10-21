{ ... }:

{
  services.avizo = {
    enable = true;
    settings = {
      default = {
        time = 1.0;
        fade-in = 0.1;
        fade-out = 0.2;
        y-offset = 0.5;
        x-offset = 0.5;
        width = 200;
        height = 50;
        border-width = 2;
        border-radius = 10;
        background = "rgba(30, 30, 46, 0.9)";
        bar-bg-color = "rgba(49, 50, 68, 1.0)";
        bar-fg-color = "rgba(137, 180, 250, 1.0)";
        border-color = "rgba(137, 180, 250, 1.0)";
        padding = 8;
        block-height = 20;
        block-width = 180;
        image-opacity = 0;
      };
    };
  };
}
