{
  ...
}:

{
  den.aspects.programs.gui.swaylock = {
    homeManager =
      {
        config,
        ...
      }:
      {
        programs.swaylock = {
          enable = true;

          settings =
            let
              fonts = config.stylix.fonts;
            in
            {
              font = fonts.monospace.name;
              font-size = fonts.sizes.desktop;

              hide-keyboard-layout = true;
              disable-caps-lock-text = true;
            };
        };
      };
  };
}
