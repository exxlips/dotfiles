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
            user.email = "nimodionik@proton.me";
            user.name = "Vadik Vadyakkov Vadyakkovich";
          };
        };
      };
    };
  };
}
