{
  den,
  ...
}:

{
  den.aspects.compositors.niri.default = {
    includes = with den.aspects; [
      compositors.niri.binds
      compositors.niri.rules
      compositors.niri.settings
      shells.noctalia.default
      shells.noctalia.settings
      misc.uwsm
    ];

    nixos =
      {
        ...
      }:
      {
        programs.niri = {
          enable = true;
          useNautilus = false;
        };

        programs.uwsm = {
          waylandCompositors.niri = {
            prettyName = "Niri";
            binPath = "/run/current-system/sw/bin/niri";
          };
        };
      };

    homeManager =
      {
        pkgs,
        osConfig,
        ...
      }:
      {
        wayland.windowManager.niri = {
          inherit (osConfig.programs.niri)
            enable
            package
            ;
        };

        xdg.portal = {
          config.niri = {
            default = "gnome";
            "org.freedesktop.impl.portal.ScreenCast" = "gnome";
            "org.freedesktop.impl.portal.Screenshot" = "gnome";
            "org.freedesktop.impl.portal.FileChooser" = "gnome";
            "org.freedesktop.impl.portal.OpenURI" = "gnome";
          };

          extraPortals = [
            pkgs.xdg-desktop-portal-gtk
          ];
        };
      };
  };
}
