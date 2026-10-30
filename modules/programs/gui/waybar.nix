{
  ...
}:

{
  den.aspects.programs.gui.waybar = {
    homeManager =
      {
        ...
      }:
      {
        programs.waybar = {
          enable = false;

          systemd.enable = false;
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
