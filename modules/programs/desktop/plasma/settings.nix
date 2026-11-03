{
  inputs,
  ...
}:

{
  den.aspects.programs.desktop.plasma.settings = {
    description = ''
      declarative settings for kde plasma (plasma-manager)
      i think for now im gonna leave it half-imperative half-declarative
    '';

    homeManager =
      {
        ...
      }:
      {
        imports = [
          inputs.plasma-manager.homeModules.plasma-manager
        ];

        programs.plasma = {
          enable = true;

          # overrideConfig = true;

          panels = [
            {
              location = "top";
              height = 40;
              floating = false;

              widgets = [
                {
                  kickoff = {
                    icon = "nix-snowflake-white";
                    sortAlphabetically = true;
                  };
                }

                "org.kde.plasma.pager"
              ];
            }
          ];

          kwin = {
            virtualDesktops = {
              number = 10;
              rows = 2;
            };
          };

          workspace = {
            cursor.theme = "Breeze_Snow";
            iconTheme = "breeze-dark";
          };

          shortcuts = {
            kwin = {
              "Window Maximize" = "Meta+F";
              "Window Close" = "Meta+Q";
              "Window Minimize" = "Meta+E";

              "Window Quick Tile Left" = "Meta+Left";
              "Window Quick Tile Right" = "Meta+Right";
              "Toggle Night Color" = "Meta+N";

              "Switch to Desktop 1" = "Meta+1";
              "Switch to Desktop 2" = "Meta+2";
              "Switch to Desktop 3" = "Meta+3";
              "Switch to Desktop 4" = "Meta+4";
              "Switch to Desktop 5" = "Meta+5";
              "Switch to Desktop 6" = "Meta+6";
              "Switch to Desktop 7" = "Meta+7";
              "Switch to Desktop 8" = "Meta+8";
              "Switch to Desktop 9" = "Meta+9";
              "Switch to Desktop 10" = "Meta+0";

              "Setup Window Tiling" = "none";
            };

            "kitty.desktop" = {
              "_launch" = "Meta+T";
            };
          };
        };
      };
  };
}
