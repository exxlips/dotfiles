{
  ...
}:
{
  den.aspects.programs.gui.wezterm = {
    homeManager =
      {
        pkgs,
        config,
        ...
      }:
      let
        colors = config.lib.stylix.colors.withHashtag;
      in
      {
        programs = {
          wezterm = {
            enable = true;
            package = pkgs.wezterm;

            options = {
              font = {
                font = "CaskaydiaCove Nerd Font";
                size = 11;
              };

              default_cursor_style = "SteadyBlock";
              cursor_blink_rate = 0;
              cursor_trail_length = 10;
              cursor_trail_decay_duration = "100ms";

              hide_tab_bar_if_only_one_tab = true;
              use_dead_keys = false;

              colors = {
                background = colors.base00;
                foreground = colors.base05;

                cursor_bg = colors.base04;
                cursor_fg = colors.base05;

                selection_bg = "${colors.base0D}60";
                selection_fg = "none";

                ansi = [
                  colors.base00
                  colors.base08
                  colors.base0B
                  colors.base0A
                  colors.base0C
                  colors.base0E
                  colors.base0D
                  colors.base0F
                ];

                brights = [
                  colors.base00
                  colors.base08
                  colors.base0B
                  colors.base0A
                  colors.base0C
                  colors.base0E
                  colors.base0D
                  colors.base0F
                ];
              };
            };
          };
        };
      };
  };
}
