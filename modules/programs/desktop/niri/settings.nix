{
  ...
}:

{
  den.aspects.programs.desktop.niri.settings = {
    description = ''
      honestly one of the best wms i have ever tried
      im heavily impressed
    '';

    homeManager =
      {
        pkgs,
        lib,
        config,
        ...
      }:
      let
        colors = config.lib.stylix.colors.withHashtag;
      in
      {
        wayland.windowManager.niri.settings = {
          screenshot-path = "~/Pictures/Screen_Sh_%d-%m-%y_%H:%M.png";

          gestures.hot-corners.off = { };

          clipboard.disable-primary = { };

          hotkey-overlay.skip-at-startup = { };

          prefer-no-csd = { };

          debug.deactivate-unfocused-windows = { };

          input = {
            keyboard.xkb = {
              layout = "us,ru";
              options = "grp:alt_shift_toggle";
            };

            mouse = {
              scroll-method = "no-scroll";
              accel-profile = "adaptive";
            };

            trackpoint = {
              scroll-method = "on-button-down";
              accel-profile = "flat";
            };

            touchpad = {
              click-method = "clickfinger";
              scroll-method = "two-finger";
              accel-profile = "adaptive";

              tap = { };
              dwt = { };
              dwtp = { };
            };

            disable-power-key-handling = { };
          };

          cursor.hide-after-inactive-ms = 2300;

          layout = {
            background-color = "transparent";

            focus-ring.off = { };
            border.off = { };

            insert-hint.color = colors.base01 + "CC";

            gaps = 8;

            shadow = {
              softness = 30;
              draw-behind-window = true;
              color = colors.base00 + "70";
              inactive-color = colors.base00 + "70";
              on = { };
            };

            default-column-width.proportion = 0.5;

            preset-column-widths._children = [
              { proportion = 0.33333; }
              { proportion = 0.5; }
              { proportion = 0.66667; }
            ];

            preset-window-heights._children = [
              { proportion = 0.4; }
              { proportion = 0.5; }
              { proportion = 1.0; }
            ];

            center-focused-column = "never";
          };

          recent-windows = {
            debounce-ms = 750;
            open-delay-ms = 150;

            highlight = {
              active-color = "${colors.base04}ff";
              urgent-color = "${colors.base08}ff";
              corner-radius = 12;
              padding = 30;
            };

            previews = {
              max-height = 480;
              max-scale = 0.5;
            };
          };

          animations = {
            "horizontal-view-movement" = {
              duration-ms = 150;
              curve = "ease-out-quad";
            };

            "window-resize" = {
              duration-ms = 150;
              curve = "ease-out-quad";
            };

            "window-close" = {
              duration-ms = 150;
              curve = "ease-out-expo";
            };

            "window-open" = {
              duration-ms = 150;
              curve = "ease-out-expo";
            };

            "window-movement" = {
              duration-ms = 150;
              curve = "ease-out-expo";
            };

            "workspace-switch" = {
              duration-ms = 150;
              curve = "ease-out-expo";
            };
          };

          overview = {
            zoom = 0.75;
            backdrop-color = colors.base00;

            workspace-shadow = {
              softness = 20;
              spread = 14;
              color = colors.base00;
              on = { };
            };
          };

          xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

          output = {
            _args = [ "eDP-1" ];
            scale = 1.0;
          };

          window-rule = {
            clip-to-geometry = true;
            geometry-corner-radius._args = [ 12.0 ];
          };

          _children = [
            {
              layer-rule = {
                block-out-from = "screencast";
                match._props.namespace = "^notifications$";
              };
            }

            {
              layer-rule = {
                place-within-backdrop = true;
                match._props.namespace = "^noctalia-wallpaper";
              };
            }
          ];
        };
      };
  };
}
