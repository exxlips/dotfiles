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

  den.aspects.shells.noctalia = {
    description = ''
      amazing shit man
      best thing i've ever used in a such while (mogs hyprland + quickshell)
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
