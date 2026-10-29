{
  ...
}:

{
  den.aspects.programs.cli.waybar = {
    homeManager =
      {
        ...
      }:
      {
        programs.waybar = {
          enable = true;

          systemd.enable = true;
        };

        stylix = {
          targets = {
            waybar = {
              enableLeftBackColors = true;

              enableCenterBackColors = true;

              enableRightBackColors = true;
            };
          };
        };
      };
  };
}
