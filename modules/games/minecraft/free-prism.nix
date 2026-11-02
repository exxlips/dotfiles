# minecraft.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.games.minecraft = {
    description = ''
      amazing launcher
      no mone for you prism haha
    '';

    # type
    nixos =
      {
        inputs',
        ...
      }:

      # ... just a package with inputs'?..
      {
        environment.systemPackages = [
          inputs'.freesm.packages.default
        ];
      };
  };
}
