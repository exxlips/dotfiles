{
  den,
  ...
}:

{
  den.aspects.gaming.minecraft = {
    nixos =
    {
      pkgs,
      inputs',
      ...
    }:

    {
      environment.systemPackages = [
        inputs'.freesm.packages.default
      ];
    };
  };
}
