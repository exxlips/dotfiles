{
  inputs,
  ...
}:
{
  den.aspects.misc.chaotic = {
    description = ''
      amazing since
      i like bleeding-edge and pre-compiled packages
    '';

    nixos =
      {
        ...
      }:
      {
        imports = [
          inputs.chaotic-nyx.nixosModules.default
        ];
      };

    homeManager =
      {
        ...
      }:
      {
        imports = [
          inputs.chaotic-nyx.homeManagerModules.default
        ];
      };
  };
}
