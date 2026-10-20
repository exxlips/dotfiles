# git.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.programs.cli.git = {
    # type
    homeManager =
    {
      ...
    }:

    {
      # git info
      programs = {
        git = {
          enable = true;

          settings = {
            user.email = "noreply@vadyakk.codeberg.org";
            user.name = "Vadik Vadikov Vadyakkovich";
          };
        };
      };
    };
  };
}
