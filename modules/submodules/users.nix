{
  den,
  ...
}:

{
  den.aspects.submodules.users =
  {
    pkgs,
  }:

  {
    nixos =
    {
      ...
    }:

    {
      users = {
        users = {
          vadya = {
            isNormalUser = true;
            description = "vadyakk";
            shell = pkgs.fishMinimal;
            extraGroups = [
              "wheel"
              "audio"
              "video"
              "networkmanager"
              "libvirtd"
              "gamemode"
              "input"
            ];
          };
        };
      };
    };
  };
}
