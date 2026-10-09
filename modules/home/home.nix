{
  den,
  ...
}:

{
  den.aspects.home = {
    nixos =
    {
      ...
    }:

    {
      home-manager.backupFileExtension = "hm-backup";
    };

    homeManager =
    {
      ...
    }:

    {
      home.username = "vadya";
      home.homeDirectory = "/home/vadya";

      home.stateVersion = "26.11";
    };
  };
}
