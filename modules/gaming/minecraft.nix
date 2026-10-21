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
      (despite im using literally a x1c8 and a hp proone g1 400 aio)
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
