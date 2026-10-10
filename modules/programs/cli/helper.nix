# helper.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.programs.cli.helper = {

    # type
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

# end
