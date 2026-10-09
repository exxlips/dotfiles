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

          userEmail = "noreply@vadyakk.codeberg.org";
          userName = "Vadik Vadikov Vadyakkovich";
        };
      };
    };
  };
}
