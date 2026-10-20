# zen.nix..~

{
  den,
  ...
}:

# main module
{
  flake-file.inputs.zen = {
    type = "github";
    owner = "0xc000022070";
    repo = "zen-browser-flake";
  };

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
