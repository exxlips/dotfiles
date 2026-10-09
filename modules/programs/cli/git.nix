{
  den,
  ...
}:

{
  den.aspects.programs.cli.git =
  {
    ...
  }:

  {
    homeManager =
    {
      ...
    }:

    {
      programs = {
        git = {
          enable = true;

          user.email = "noreply@vadyakk.codeberg.org";
          user.name = "Vadik Vadikov Vadyakkovich";
        };
      };
    };
  };
}
