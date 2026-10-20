# zen.nix..~

{
  den,
  ...
}:

# main module
{
  flake-file.inputs.zen-browser-flake = {
    type = "github";
    owner = "0xc000022070";
    repo = "zen-browser-flake";
  };

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
