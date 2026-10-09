# minecraft.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.gaming.minecraft = {
    description = ''
      amazing launcher
      (despite im using literally a x1c8)
    '';

    # type
    nixos =
    {
      pkgs,
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
