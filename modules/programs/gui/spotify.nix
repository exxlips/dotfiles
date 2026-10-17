# spotify.nix..~

{
  den,
  ...
}:

{
  # main aspect
  den.aspects.programs.gui.spotify = {

    # type
    homeManager =
      {
        inputs,
        inputs',
        config,
        ...
      }:
      # let-in?!..
      let
        colors = config.lib.stylix.colors;
        spicetify = inputs'.spicetify-nix.legacyPackages;
      in

      {
        imports = [
          inputs.spicetify-nix.homeManagerModules.spicetify
        ];

        # spicetify
        programs.spicetify = {
          enable = true;

          windowManagerPatch = true;
          wayland = true;

          enabledExtensions = [
            spicetify.extensions.adblock
          ];

          colorScheme = "custom";

          customColorScheme = {
            accent = colors.base03;
            accent-active = colors.base03;
            accent-inactive = colors.base02;

            banner = colors.base03;

            border-active = colors.base03;
            border-inactive = colors.base03;

            button = colors.base0B;
            button-active = colors.base0B;
            button-disabled = colors.base03;

            card = colors.base00;

            equalizer = colors.base0B;

            header = colors.base00;

            highlight = colors.base04;
            highlight-elevated = colors.base03;

            main = colors.base00;
            main-elevated = colors.base02;

            misc = colors.base02;

            notification = colors.base0A;
            notification-error = colors.base08;

            player = colors.base00;

            selected-row = colors.base03;

            shadow = colors.base00;

            sidebar = colors.base01;
            sidebar-text = colors.base07;

            subtext = colors.base06;

            tab-active = colors.base04;

            text = colors.base06;
          };
        };

        stylix.targets.spicetify.enable = false;
        };
      };
  };
}
