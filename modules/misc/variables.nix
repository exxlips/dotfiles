{
  lib,
  ...
}:
{
  den.aspects.misc.variables = {
    nixos =
      {
        pkgs,
        ...
      }:
      {
        environment.variables = {
          NIXOS_OZONE_WL = "1";
          XCURSOR_THEME = "Bibata-Modern-Ice";
          ELECTRON_OZONE_PLATFORM_HINT = "wayland";
          QT_QPA_PLATFORM = lib.mkForce "wayland";
          QS_ICON_THEME = "Papirus";
          QT_QPA_PLATFORMTHEME = lib.mkForce "gtk3";
          GSETTINGS_SCHEMA_DIR = "${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}/glib-2.0/schemas";
        };

      };
  };
}
