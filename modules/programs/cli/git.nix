{
  den,
  ...
}:

{
  den.aspects.programs.cli.git = {
    homeManager =
    {
      ...
    }:

    {
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
