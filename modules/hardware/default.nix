{
  inputs,
  ...
}:
{
  den.aspects.hardware = {
    nixos =
      {
        ...
      }:

      {
        imports = [
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-x1-8th-gen
        ];
      };
  };
}
