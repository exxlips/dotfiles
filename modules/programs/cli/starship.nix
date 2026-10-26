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
        colors = config.lib.stylix.colors.withHashtag;
      in
      {
        programs.starship = {
          enable = true;
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
              style_root = colors.base08;
              style_user = colors.base0E;

              show_always = true;
            };

            directory = {
              format = "[$path]($style) [$read_only]($read_only_style)";
              style = colors.base0C;

              read_only = "[ ] ";
              read_only_style = colors.base08;
              home_symbol = "home";

              truncation_length = 1;
              truncation_symbol = "../";
            };

            git_branch = {
              format = "on [$symbol$branch]($style) ";
              style = colors.base0B;

              symbol = " ";

              truncation_length = 14;
              truncation_symbol = "";
            };

            git_metrics = {
              format = "[+$added]($added_style)/[-$deleted]($deleted_style) ";
              added_style = colors.base0B;
              deleted_style = colors.base08;
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
