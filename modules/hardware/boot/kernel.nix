{
  inputs,
  ...
}:
{
  den.aspects.hardware.boot.kernel = {
    nixos =
      {
        pkgs,
        ...
      }:
      {
        boot.kernelPackages = pkgs.linuxPackages_zen;
      };
  };
}
