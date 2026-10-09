# flatpak.nix..~

{
  den,
  inputs,
  ...
}:


# main module (with let in's this time)
let
  flatpakModule = inputs.flatpak-nix.nixosModules.nix-flatpak;
in

# the aspect
{
  den.aspects.submodules.flatpak = {
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
