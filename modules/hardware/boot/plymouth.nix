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

            logo = lib.contactStringsSep "/" [
              pkgs.nixos-icons
              "share"
              "icons"
              "hicolor"
              "48x48"
              "apps"
            ];
          };
        };
      };
  };
}
