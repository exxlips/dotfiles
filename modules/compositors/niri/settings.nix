{
  ...
}:

{
  den.aspects.compositors.niri.settings = {
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
          screenshot-path = "~/Pictures/Screen_Sh_%d-%m-%y_%H:%M:%S.png";

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

              _children = [
                { tap._args = [ ]; }
                { dwt._args = [ ]; }
                { dwtp._args = [ ]; }
              ];
            };

            _children = [
              {
                disable-power-key-handling._args = [ ];
              }
            ];
          };

          cursor = {
            hide-after-inactive-ms = 1000;
          };

          layout = {
            background-color = colors.base01;

            focus-ring._children = [
              { off._args = [ ]; }
            ];

            border._children = [
              { off._args = [ ]; }
            ];

            insert-hint.color = colors.base01 + "CC";

            gaps = 8;

            shadow = {
              softness = 30;
              draw-behind-window = true;
              color = colors.base00 + "70";
              inactive-color = colors.base00 + "70";

              _children = [
                { on._args = [ ]; }
              ];
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

              _children = [
                { on._args = [ ]; }
              ];
            };
          };

          xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

          _children = [
            {
              output = {
                _args = [ "eDP-1" ];
                scale = 1.0;
              };
            }

            {
              window-rule = {
                clip-to-geometry = true;
                geometry-corner-radius._args = [ 12.0 ];
              };
            }

            {
              layer-rule = {
                block-out-from = "screencast";

                _children = [
                  {
                    match._props.namespace = "^notifications$";
                  }
                ];
              };
            }

            {
              layer-rule = {
                place-within-backdrop = true;

                _children = [
                  {
                    match._props.namespace = "dms:blurwallpaper";
                  }
                ];
              };
            }

            {
              gestures = {
                hot-corners._children = [
                  { off._args = [ ]; }
                ];
              };
            }

            {
              clipboard._children = [
                { disable-primary._args = [ ]; }
              ];
            }

            {
              hotkey-overlay._children = [
                { skip-at-startup._args = [ ]; }
              ];
            }

            {
              prefer-no-csd._args = [ ];
            }

            {
              debug._children = [
                { deactivate-unfocused-windows._args = [ ]; }
              ];
            }
          ];
        };
      };
  };
}
