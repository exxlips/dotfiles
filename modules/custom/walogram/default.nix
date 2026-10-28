{
  ...
}:
{
  den.aspects.custom.walogram = {
    nixos =
      {
        ...
      }:
      {
        imports = [
          ./package.nix
          ./theme.nix
        ];
      };
  };
}
