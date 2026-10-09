# home.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.home = {

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

      home.stateVersion = "26.11";
    };
  };
}
