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

      # to make fish start starship:
      programs.fish.enable = true;
      
      # starship configuration
      programs = {
        starship = {
          enable = true;
          enableFishIntegration = true;
 
          # settings for starship (for example, settings, hostname, username, directory.)
          settings = {
            format = "$hostname$username$directory$git_branch$git_status$line_break$character";

            hostname = {
              ssh_only = false;
              format = " [$hostname](#859c9e) ";
            };
            username = {
              show_always = true;
              format = "[$user](#7a8896) ";
            };

            directory = {
              truncation_length = 3;
              format = "in [$path](#576082) ";
            };

            git_branch = {
              format = "[$symbol$branch](#5b5d8f) ";
            };

            character = {
              success_symbol = "[ ](#8c977d)";
              error_symbol = "[ ](#b66467)";
            };
          };
        };
      };
    };
  };
}

# end
