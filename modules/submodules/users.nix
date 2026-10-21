# users.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.submodules.users = {

    # type
    nixos =
    {
      pkgs,
      ...
    }:

    {
  
      # user config
      users = {
        users = {
          vadya = {
            isNormalUser = true;
            description = "vadyakk";
            hashedPasswordFile = "/home/vadya/.secrets/vadya-password-hash";
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
