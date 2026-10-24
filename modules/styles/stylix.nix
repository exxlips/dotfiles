# stylix.nix..~

{
  inputs,
  ...
}:

let
  stylixModule = inputs.stylix.nixosModules.stylix;
in
{
  den.aspects.styles.stylix = {
    description = ''
      great nix variant of matugen
    '';

    # type
    homeManager =
      {
        ...
      }:

      {

        stylix = {
          enable = true;
          overlays.enable = true;

          targets.helix.enable = false;
        };
      };

    nixos =
      {
        ...
      }:
      {

        imports = [ stylixModule ];
      };
  };
}

# end
