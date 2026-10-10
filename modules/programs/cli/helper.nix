{
  den,
  ...
}:

{
  den.aspects.programs.cli.helper = {
    nixos =
    {
      ...
    }:

    {
      programs = {
        nh = {
          enable = true;
          flake = "/home/vadya/dotfiles";

          clean = {
            enable = true;
            dates = "weekly";
            extraArgs = "--keep-since 14d --keep 3 --keep-one";
          };
        };
      };
    };
  };
}
