# noctalia.nix..~
{
  inputs,
  self',
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

  den.aspects.programs.desktop.noctalia.settings = {
    description = ''
      amazing shit
      niri noctalia >>>>>>>>> hyprland qs
    '';

    environment.systemPackages = [
      self'.packages.noctalia
    ];

    homeManager =
      {
        ...
      }:
      {
        wayland.windowManager.niri.settings._children = [
          {
            spawn-at-startup._args = [ "noctalia" ];
          }
        ];

        programs = {
          noctalia = {
            settings = {
              bar = {
                margin_ends = 120;

                thickness = 41;
              };
            };
          };
        };
      };
  };
}
