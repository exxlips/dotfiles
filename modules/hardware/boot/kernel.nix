{
  ...
}:

{
  den.aspects.hardware.boot.kernel = {
    nixos =
      {
        pkgs,
        lib,
        ...
      }:

      {
        boot = {
          kernelPackages = lib.mkDefault pkgs.linuxPackages_zen;
        };
      };
  };
}
