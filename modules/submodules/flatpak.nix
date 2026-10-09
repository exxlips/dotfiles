{
  den,
  ...
}:

let
  flatpakModule = inputs.flatpak-nix.nixosModules.default;
in
{
  den.aspects.submodules.flatpak = {
    nixos =
    {
      ...
    }:

    {
      import = [ flatpakModule ];
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
