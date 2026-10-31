{
  ...
}:

{
  den.aspects.programs.desktop.niri.binds = {
    homeManager =
      {
        ...
      }:
      {
        wayland.windowManager.niri = {
          settings = {
            binds = {
              "Mod+Space".spawn-sh = "noctalia msg panel-toggle launcher";
              "Mod+Shift+Tab".spawn-sh = "noctalia msg panel-toggle clipboard";

              "Mod+W".spawn-sh = "noctalia msg window-switcher";
              "Mod+Alt+Space".spawn-sh = "noctalia msg dock-toggle";
              "Mod+T".spawn = [ "kitty" ];

              "Mod+Shift+Slash".show-hotkey-overlay = { };

              "Mod+Q".close-window = { };

              "Mod+C".center-window = { };
              "Mod+Shift+C".center-column = { };

              "Mod+O".toggle-overview = { };
              "Mod+Shift+Space".toggle-window-floating = { };

              "Mod+F".maximize-column = { };
              "Mod+Shift+F".fullscreen-window = { };

              "Mod+S".switch-preset-column-width = { };
              "Mod+Shift+S".switch-preset-window-height = { };

              "Mod+Minus".set-column-width = "-10%";
              "Mod+Equal".set-column-width = "+10%";
              "Mod+Shift+Minus".set-window-height = "-10%";
              "Mod+Shift+Equal".set-window-height = "+10%";

              "Mod+Comma".consume-window-into-column = { };
              "Mod+Period".expel-window-from-column = { };

              "Mod+H".focus-column-left = { };
              "Mod+J".focus-window-or-workspace-down = { };
              "Mod+K".focus-window-or-workspace-up = { };
              "Mod+L".focus-column-right = { };

              "Mod+Left".focus-column-left = { };
              "Mod+Down".focus-window-or-workspace-down = { };
              "Mod+Up".focus-window-or-workspace-up = { };
              "Mod+Right".focus-column-right = { };

              "Mod+Shift+H".move-column-left = { };
              "Mod+Shift+J".move-column-to-workspace-down = { };
              "Mod+Shift+K".move-column-to-workspace-up = { };
              "Mod+Shift+L".move-column-right = { };

              "Mod+Shift+Left".move-column-left = { };
              "Mod+Shift+Down".move-column-to-workspace-down = { };
              "Mod+Shift+Up".move-column-to-workspace-up = { };
              "Mod+Shift+Right".move-column-right = { };

              "Mod+Ctrl+J".move-window-down-or-to-workspace-down = { };
              "Mod+Ctrl+K".move-window-up-or-to-workspace-up = { };

              "Mod+Ctrl+Down".move-window-down-or-to-workspace-down = { };
              "Mod+Ctrl+Up".move-window-up-or-to-workspace-up = { };

              "Mod+1".focus-workspace = 1;
              "Mod+2".focus-workspace = 2;
              "Mod+3".focus-workspace = 3;
              "Mod+4".focus-workspace = 4;
              "Mod+5".focus-workspace = 5;
              "Mod+6".focus-workspace = 6;
              "Mod+7".focus-workspace = 7;
              "Mod+8".focus-workspace = 8;
              "Mod+9".focus-workspace = 9;
              "Mod+0".focus-workspace = 10;

              "Mod+Shift+1".move-column-to-workspace = 1;
              "Mod+Shift+2".move-column-to-workspace = 2;
              "Mod+Shift+3".move-column-to-workspace = 3;
              "Mod+Shift+4".move-column-to-workspace = 4;
              "Mod+Shift+5".move-column-to-workspace = 5;
              "Mod+Shift+6".move-column-to-workspace = 6;
              "Mod+Shift+7".move-column-to-workspace = 7;
              "Mod+Shift+8".move-column-to-workspace = 8;
              "Mod+Shift+9".move-column-to-workspace = 9;
              "Mod+Shift+0".move-column-to-workspace = 10;

              "Print".spawn-sh = "noctalia msg screenshot-region";
              "Shift+Print".spawn-sh = "noctalia msg screenshot-fullscreen";
            };
          };
        };
      };
  };
}
