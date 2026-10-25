{
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
        inputs,
        ...
      }:
      {
        imports = [
          inputs.chaotic-nyx.nixosModules.default
        ];
      };

    homeManager =
      {
        inputs,
        ...
      }:
      {
        imports = [
          inputs.chaotic-nyx.homeManagerModules.default
        ];
      };
  };
}
