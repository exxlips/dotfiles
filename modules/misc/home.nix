# home.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.misc.home = {

    # type
    homeManager =
      {
        ...
      }:

      {
        # home settings

        home.username = "vadya";
        home.homeDirectory = "/home/vadya";

        xdg.configFile."gtk-3.0/settings.ini".force = true;
        xdg.configFile."gtk-4.0/settings.ini".force = true;
        xdg.configFile."fish/config.fish".force = true;

        home.stateVersion = lib.mkDefault "26.11";
      };
  };
}
