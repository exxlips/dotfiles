{
  ...
}:

{
  den.aspects.programs.cli.fastfetch = {
    homeManager =
      { ... }:
      {
        programs.fastfetch = {
          enable = true;

          settings = {
            "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";

            logo = {
              type = "kitty";
              source = ./haunter.gif;
              animationFrame = 0;
              width = 40;

              padding = {
                top = 1;
                right = 3;
              };
            };

            display.separator = " - ";

            modules = [
              "title"
              "separator"

              {
                type = "os";
                key = "";
                keyColor = "red";
              }

              {
                type = "kernel";
                key = "";
                keyColor = "yellow";
              }

              {
                type = "uptime";
                key = "󱑂";
                keyColor = "green";
              }

              {
                type = "packages";
                key = "󰏗";
                keyColor = "cyan";
              }

              {
                type = "cpu";
                key = "";
                keyColor = "magenta";
              }

              {
                type = "gpu";
                key = "󰢮";
                keyColor = "blue";
              }

              {
                type = "memory";
                key = "";
                keyColor = "magenta";
              }

              {
                type = "terminal";
                key = "";
                keyColor = "green";
              }

              {
                type = "shell";
                key = "";
                keyColor = "cyan";
              }

              "break"

              {
                type = "colors";
                symbol = "circle";
              }
            ];
          };
        };
      };
  };
}
