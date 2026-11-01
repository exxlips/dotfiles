{
  ...
}:

{
  den.aspects.programs.desktop.niri.rules = {
    homeManager =
      {
        ...
      }:
      {
        wayland.windowManager.niri.settings._children = [
          {
            window-rule = {
              open-maximized = false;
              open-fullscreen = false;
            };
          }

          {
            window-rule = {
              default-column-width.proportion = 0.5;

              _children = [
                {
                  match._props.app-id = "kitty_small";
                }

                {
                  match._props.app-id = "foot_small";
                }
              ];
            };
          }

          {
            window-rule.block-out-from = "screen-capture";
          }

          {
            window-rule.geometry-corner-radius._args = [
              12.0
              12.0
              12.0
              12.0
            ];
          }

          {
            window-rule = {
              default-column-width.fixed = 360;
              default-window-height.fixed = 640;

              match._props = {
                app-id = "^firefox$";
                title = "^Picture-in-Picture";
              };
            };
          }

          {
            window-rule = {
              block-out-from = "screencast";
              match._props.app-id = ".*ayugram.*";
            };
          }

          {
            window-rule = {
              open-fullscreen = true;

              match._props = {
                app-id = "ayugram";
                title = "Media viewer";
              };
            };
          }

          {
            window-rule = {
              default-column-width.proportion = 0.7;
              default-window-height.proportion = 0.7;

              match._props = {
                app-id = "^org.freesmlauncher.FreesmLauncher$";
                title = "^New Instance";
              };
            };
          }

          {
            window-rule = {
              default-column-width.proportion = 0.3;

              match._props = {
                app-id = "^steam$";
                title = "^Friends List$";
              };
            };
          }

          {
            window-rule = {
              open-focused = false;
              clip-to-geometry = true;

              geometry-corner-radius._args = [
                4.0
                4.0
                4.0
                4.0
              ];

              match._props = {
                app-id = "^steam$";
                title = "^notificationtoasts_\\d+_desktop$";
              };
            };
          }
        ];
      };
  };
}
