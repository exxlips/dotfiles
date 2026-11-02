{
  ...
}:

{
  den.aspects.programs.cli.fastfetch = {
    homeManager =
      {
        ...
      }:
      {
        programs = {
          fastfetch = {
            enable = true;

            settings = {
              "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";

              logo = {
                type = "file";
                source = "~/.config/fastfetch/ascii/lugia.txt";

                color = {
                  "1" = "cyan";
                };

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
                  key = " ";
                  keyColor = "red";
                }

                {
                  type = "kernel";
                  key = " ";
                  keyColor = "yellow";
                }

                {
                  type = "uptime";
                  key = "󱑂 ";
                  keyColor = "green";
                }

                {
                  type = "packages";
                  key = "󰏗 ";
                  keyColor = "cyan";
                }

                {
                  type = "cpu";
                  key = " ";
                  keyColor = "magenta";
                }

                {
                  type = "gpu";
                  key = "󰢮 ";
                  keyColor = "blue";
                }

                {
                  type = "memory";
                  key = " ";
                  keyColor = "magenta";
                }

                {
                  type = "terminal";
                  key = " ";
                  keyColor = "green";
                }

                {
                  type = "shell";
                  key = " ";
                  keyColor = "cyan";
                }

                "break"
                "colors"
              ];
            };
          };

          xdg.configFile."fastfetch/ascii/lugia.txt".source = ./lugia.txt;
        };
      };
  };
}
