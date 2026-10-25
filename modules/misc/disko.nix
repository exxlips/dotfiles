{
  inputs,
  ...
}:
{
  den.aspects.misc.disko = {
    description = ''
      i went too far

      even partitioning is gonna be declarative lol
    '';

    nixos =
      {
        ...
      }:
      {
        imports = [
          inputs.disko.nixosModules.disko
        ];
      };
  };
}
