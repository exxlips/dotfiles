# noctalia.nix..~
{
  inputs,
  ...
}:

{
  perSystem =
    {
      system,
      ...
    }:

    {
      packages.noctalia = inputs.noctalia.packages.${system}.default;
    };

  den.aspects.shells.noctalia.settings = {
    description = ''
      amazing shit
      niri noctalia >>>>>>>>> hyprland qs
    '';

    homeManager = {
      programs = {
        noctalia = {
          "bar.default" = {
            margin_ends = 120;

            thickness = 41;

            position = "bottom";
          };
        };
      };
    };
  };
}
