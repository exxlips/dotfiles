# flatpak.nix..~

{
  den,
  inputs,
  ...
}:


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
      imports = [ inputs.flatpak.nixosModules.nix-flatpak ];
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
