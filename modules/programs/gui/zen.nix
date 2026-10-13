# zen.nix..~

{
  den,
  ...
}:


# main module
{
  den.aspects.programs.gui.zen = {

    # type
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
