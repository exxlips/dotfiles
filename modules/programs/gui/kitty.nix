# kitty.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.programs.gui.kitty = {
    # cool description
    description = ''
      BEST TERMINAL EVER
      i dont care what anyone says
    '';

    # type
    homeManager =
      {
        config,
        ...
      }:
      let
        colors = config.lib.stylix.colors.withHashtag;
      in
      {

        # stop stylix targetting kitty
        stylix.targets.kitty.enable = false;

        # main configuration
        programs = {
          kitty = {
            enable = true;
            settings = {

              background = colors.base00;
              foreground = colors.base05;

              cursor = colors.base04;
              cursor_text_color = colors.base05;
              cursor_trail = 1;
              cursor_trail_decay = "0.1 0.4";

              url_color = colors.base0C;

              color0 = colors.base00;
              color8 = colors.base00;

              color1 = colors.base08;
              color9 = colors.base08;

              color2 = colors.base0B;
              color10 = colors.base0B;

              color3 = colors.base0A;
              color11 = colors.base0A;

              color4 = colors.base0C;
              color12 = colors.base0C;

              color5 = colors.base0E;
              color13 = colors.base0E;

              color6 = colors.base0D;
              color14 = colors.base0D;

              color7 = colors.base0F;
              color15 = colors.base0F;
            };

            font = {
              name = "CaskaydiaCove Nerd Font";
              size = 12;
            };
          };
        };
      };
  };
}

# end
