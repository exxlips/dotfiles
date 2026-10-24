# niri.nix..~

{
  inputs,
  ...
}:

# main aspect
{
  den.aspects.compositors.niri = {
    # type
    nixos =
      {
        pkgs,
        lib,
        self',
        ...
      }:

      {

        # settings for niri, below (perSystem) is the main configuration (like config.kdl)
        imports = [
          inputs.hjem.nixosModules.default
        ];

        # CRITICAL
        programs.niri = {
          enable = true;
          package = self'.packages.niri;
        };

        services.upower.enable = true;

        # portals for extra-compatibility
        xdg.portal = {
          enable = true;
          config = {
            common.default = [ "gtk" ];
            niri = {
              default = [
                "gnome"
                "gtk"
              ];

              "org.freedesktop.impl.portal.ScreenCast" = [ "gtk" ];
            };
          };

          extraPortals = with pkgs; [
            xdg-desktop-portal-gnome
            xdg-desktop-portal-gtk
          ];
        };

        # ESSENTIAL
        environment.variables = {
          NIXOS_OZONE_WL = "1";
          XCURSOR_THEME = "Bibata-Modern-Ice";
          XCURSOR_SIZE = 24;
          ELECTRON_OZONE_PLATFORM_HINT = "wayland";
          QT_QPA_PLATFORM = lib.mkForce "wayland";
          QS_ICON_THEME = "Papirus";
          QT_QPA_PLATFORMTHEME = lib.mkForce "gtk3";
          GSETTINGS_SCHEMA_DIR = "${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}/glib-2.0/schemas";
        };

        fonts.packages = with pkgs; [
          nerd-fonts.caskaydia-cove
        ];

        # needed pkgs
        environment.systemPackages = with pkgs; [
          gtk3
          xwayland-satellite
          wl-clipboard-rs
          brightnessctl
          polkit_gnome
          nemo

          gsettings-desktop-schemas
          bibata-cursors
          papirus-icon-theme

          self'.packages.noctalia
        ];

        # gtk tweaks
        hjem.users.vadya.files.".config/gtk-4.0/settings.ini".text = ''
          [Settings]
          gtk-theme-name=Yaru-remix-dark
          gtk-icon-theme-name=Yaru-remix
          gtk-application-prefer-dark-theme=1
        '';

        hjem.users.vadya.files.".config/gtk-3.0/settings.ini".text = ''
          [Settings]
          gtk-theme-name=Yaru-remix-dark
          gtk-icon-theme-name=Yaru-remix
          gtk-application-prefer-dark-theme=1
        '';
      };
  };

  # main niri configuration
  perSystem =
    {
      pkgs,
      lib,
      self',
      config,
      ...
    }:

    {
      packages.niri = inputs.wrapper-modules.wrappers.niri.wrap {

        # vimjoyer forgot this shit in the vid lol
        inherit pkgs;

        settings = {
          prefer-no-csd = { };

          spawn-at-startup = [
            (lib.getExe self'.packages.noctalia)
          ];

          cursor = {
            xcursor-theme = "Bibata-Modern-Ice";
            xcursor-size = 24;
          };

          xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

          input = {
            focus-follows-mouse = { };
            keyboard = {
              xkb = {
                layout = "us,ru";
                options = "grp:alt_shift";
              };
            };
          };

          window-rule = {
            geometry-corner-radius = 25;
            clip-to-geometry = true;
          };

          layout = {
            gaps = 10;
            border = {
              off = { };
              width = 4;
            };
            focus-ring = {
              off = { };
            };
          };

          # binds
          binds = {
            "Mod+T".spawn-sh = lib.getExe pkgs.kitty;
            "Mod+Q".close-window = { };

            "Mod+Space".spawn-sh = "${self'.packages.noctalia}/bin/noctalia msg panel-toggle launcher";
            "Mod+F".maximize-column = { };
            "Mod+Shift+F".fullscreen-window = { };
            "Mod+P".toggle-window-floating = { };
            "Mod+C".center-column = { };

            "Mod+Print".spawn-sh = ''
              ${lib.getExe pkgs.grim} -g "$(${lib.getExe pkgs.slurp})" - | ${lib.getExe pkgs.wl-clipboard}
            '';

            "Print".spawn-sh = ''
              ${lib.getExe pkgs.grim} - | ${lib.getExe pkgs.wl-clipboard}
            '';

            "Mod+H".focus-column-left = { };
            "Mod+L".focus-column-right = { };
            "Mod+K".focus-window-up = { };
            "Mod+J".focus-window-down = { };

            "Mod+Left".focus-column-left = { };
            "Mod+Right".focus-column-right = { };
            "Mod+Up".focus-window-up = { };
            "Mod+Down".focus-window-down = { };

            "Mod+Shift+H".move-column-left = { };
            "Mod+Shift+L".move-column-right = { };
            "Mod+Shift+K".move-window-up = { };
            "Mod+Shift+J".move-window-down = { };

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

            "Mod+Equal".set-column-width = "+10%";
            "Mod+Minus".set-column-width = "-10%";
          };
        };
      };
    };
}

# end
