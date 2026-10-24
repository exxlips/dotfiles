{
  ...
}:
{
  den.aspects.hardware = {
    nixos =
      {
        inputs,
        ...
      }:

      {
        imports = [
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-x1-8th-gen
        ];
      };
  };
}
