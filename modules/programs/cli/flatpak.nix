# flatpak.nix..~

{
  den,
  inputs,
  ...
}:


# the aspect
{
  den.aspects.programs.cli.flatpak = {
    nixos =
    {
      ...
    }:

    {
      imports = [ inputs.flatpak-nix.nixosModules.nix-flatpak ];
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
