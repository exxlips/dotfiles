{
  ...
}:
{
  den.aspects.hardware = {
    nixos =
      {
        nixos-hardware,
        ...
      }:

      {
        imports = [
          nixos-hardware.nixosModules.lenovo-thinkpad-x1-8th-gen
        ];
      };
  };
}
