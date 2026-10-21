# zen.nix..~

{
  den,
  ...
}:

# main module
{
  den.aspects.programs.gui.zen = {
    nixos =
    {
      inputs',
      ...
    }:

    {
      environment.systemPackages = [
        inputs'.zen.packages.default
      ];
    };
  };
}
