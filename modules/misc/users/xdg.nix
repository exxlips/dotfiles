{
  ...
}:
{
  den.aspects.misc.users.xdg = {
    nixos =
      {
        pkgs,
        ...
      }:

      {
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

      };
  };
}
