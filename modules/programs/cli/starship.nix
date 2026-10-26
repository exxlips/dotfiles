# starship.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.programs.cli.starship = {
    # cool description
    description = ''
      doesnt fucking work btw
    '';

    # type
    homeManager =
      {
        config,
        ...
      }:
      let
        colors = config.lib.stylix.colors.withHashtag;
      in
      {

        programs.fish.enable = true;

        # starship configuration
        programs = {
          starship = {
            enable = true;
            enableFishIntegration = true;

            # settings for starship (for example, settings, hostname, username, directory.)
            settings = {
              format = "[$username$directory$git_branch$git_status$line_break$character](colors.base0C)";

              username = {
                show_always = true;
                format = "$user, ";
              };

              directory = {
                truncation_length = 3;
                format = "$path branch ";
              };

              git_branch = {
                symbol = " ";
                format = "$symbol$branch";
              };

              character = {
                success_symbol = "[❯](colors.base0B)";
                error_symbol = "[❯](colors.base08)";
              };
            };
          };
        };
      };
  };
}

# end
