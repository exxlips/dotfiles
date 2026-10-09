{
  den,
  inputs,
  ...
}:

let
  flatpakModule = inputs.flatpak-nix.nixosModules.nix-flatpak;
in
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
        packages = [
          "org.vinegarhq.Sober"
          "org.vinegarhq.Vinegar"
        ];
      };
    };
  };
}
