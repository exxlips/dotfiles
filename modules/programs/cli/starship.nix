{
  ...
}:

{
  den.aspects.programs.cli.starship = {
    homeManager =
      {
        config,
        ...
      }:
      let
        colors = config.lib.stylix.colors.withHashtags;
      in
      {
        programs.starship = {
          enable = true;
          enableFishIntegration = true;
          enableTransience = true;

          settings = {
            add_newline = true;

            format = [
              "$username"
              "$directory"
              "$git_branch"
              "$cmd_duration"
              "$line_break"
              "$character"
            ];
            username = {
              format = "[$user]($style) in ";
              style_root = colors.base0E;
              style_user = "bold purple";

              show_always = true;
            };

            directory = {
              format = "[$path]($style) [$read_only]($read_only_style)";
              style = "bold fg:blue";

              read_only = "[ ] ";
              read_only_style = "bold red";
              home_symbol = "home";

              truncation_length = 1;
              truncation_symbol = "../";
            };

            git_branch = {
              format = "on [$symbol$branch]($style) ";
              style = "bold italic fg:green";

              symbol = " ";

              truncation_length = 14;
              truncation_symbol = "";
            };

            git_metrics = {
              format = "[+$added]($added_style)/[-$deleted]($deleted_style) ";
              added_style = "bold fg:green";
              deleted_style = "bold fg:red";
            };

            cmd_duration = {
              format = "[$duration](bold fg:yellow)";

              min_time = 1000;
            };

            character = {
              format = "$symbol ";
              success_symbol = "[❯](bold green)";
              error_symbol = "[✗](bold red)";
            };
          };
        };
      };
  };
}
