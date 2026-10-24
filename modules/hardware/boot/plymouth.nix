{
  ...
}:

{
  den.aspects.hardware.boot.plymouth = {
    nixos =
      {
        lib,
        pkgs,
        ...
      }:

      {
        boot = {
          plymouth = {
            enable = true;

            logo = lib.concatStringsSep "/" [
              pkgs.nixos-icons
              "share"
              "icons"
              "hicolor"
              "64x64"
              "apps"
              "nix-snowflake-white.png"
            ];
          };
        };
      };
  };
}
