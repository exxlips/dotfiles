# users.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.miscellaneous.users.main = {

    # type
    nixos =
      {
        pkgs,
        lib,
        ...
      }:

      {

        # user config
        users = {
          mutableUsers = false;
          users = {
            vadya = {
              isNormalUser = true;
              description = lib.mkForce "vadya";
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
