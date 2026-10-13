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
      environment.systemPackages = with pkgs; [
        inputs'.zen.packages.default
      ];
    };
  };
}
