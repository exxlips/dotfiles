# flatpak.nix..~

{
  den,
  inputs,
  ...
}:


# main module (with let in's this time)
let
  flatpakModule = inputs.flatpak.nixosModules.nix-flatpak;
in

# the aspect
{
  flake-file.inputs.flatpak-nix = {
    type = "github";
    owner = "gmodena";
    repo = "flatpak-nix";
  };
 
  den.aspects.programs.cli.flatpak = {
    nixos =
    {
      ...
    }:

    {
      imports = [ flatpakModule ];
      services.flatpak = {
        enable = true;

        # declarative packages
        packages = [
          "org.vinegarhq.Sober"
          "org.vinegarhq.Vinegar"
        ];
      };
    };
  };
}

# end
