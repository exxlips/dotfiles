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
      zen,
      ...
    }:

    {
      environment.systemPackages = [
        inputs'.zen.packages.default
      ];
    };
  };
}
