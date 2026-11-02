{
  lib,
  pkgs,
  ...
}:

{
  den.aspects.misc.home = {
    description = ''
      ironic im using home manager
      simultaneously along hjem and hjem-rum
      (i dont even use hjem-rum xd fuck)
    '';

    homeManager =
      {
        ...
      }:

      {
        home.username = "vadya";
        home.homeDirectory = "/home/vadya";

        xdg.configFile."gtk-3.0/settings.ini".force = true;
        xdg.configFile."gtk-4.0/settings.ini".force = true;

        home.stateVersion = lib.mkDefault "26.11";
      };
  };
}
