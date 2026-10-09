{
  den,
  ...
}:

{
  den.aspects.gaming.minecraft = {
    nixos =
    {
      pkgs,
      ...
    }:

    {
      environment.systemPackages = [
        inputs.freesm.packages.${pkgs.system}.freesm
      ];
    };
  };
}
