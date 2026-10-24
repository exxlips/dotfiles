{
  ...
}:
{
  den.aspects.styles.gtk = {
    nixos =
      {
        ...
      }:
      {
        # gtk tweaks
        hjem.users.vadya.files.".config/gtk-4.0/settings.ini".text = ''
          [Settings]
          gtk-theme-name=Qogir
          gtk-icon-theme-name=Papirus
          gtk-application-prefer-dark-theme=1
        '';

        hjem.users.vadya.files.".config/gtk-3.0/settings.ini".text = ''
          [Settings]
          gtk-theme-name=Qogir
          gtk-icon-theme-name=Papirus
          gtk-application-prefer-dark-theme=1
        '';

      };
    homeManager =
      {
        pkgs,
        ...
      }:
      {
        gtk = {
          enable = true;

          theme = {
            name = "Qogir";
            package = pkgs.qogir-theme;
          };

          iconTheme = {
            name = "Papirus";
            package = pkgs.papirus-icon-theme;
          };
        };
      };
  };
}
