{
  den,
  ...
}:

{
  den.aspects.programs.gui.ayugram = {
    nixos =
    {
      inputs',
      ...
    }:

    {
      environment.systemPackages = [
        inputs'.ayugram.packages.default
      ];
    };
  };
}
