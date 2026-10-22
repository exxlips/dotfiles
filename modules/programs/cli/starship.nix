# starship.nix..~

{
  den,
  ...
}:

{
  den.aspects.programs.cli.starship = {
    # cool description
    description = ''
      doesnt fucking work btw
    '';


    # type
    homeManager =
    {
      ...
    }:

    {
      
      programs.fish.enable = true;

      # starship configuration
      programs = {
        starship = {
          enable = true;
          enableFishIntegration = true;
 
          # settings for starship (for example, settings, hostname, username, directory.)
          settings = {
            format = "[$username$directory$git_branch$git_status$line_break$character](#8aa6a2)";

            username = {
              show_always = true;
              format = "$user ";
            };

            directory = {
              truncation_length = 3;
              format = "in $path from ";
            };

            git_branch = {
              symbol = " ";
              format = "$symbol$branch";
            };

            character = {
              success_symbol = "[❯](#8c977d)";
              error_symbol = "[❯](#b66467)";
            };
          };
        };
      };
    };
  };
}

# end
