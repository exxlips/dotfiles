{
  inputs,
  ...
}:

{
  den.aspects.misc.nur = {
    nixos =
      {
        ...
      }:
      {
        nixpkgs.overlays = [
          inputs.nur.overlays.default
        ];
      };

    homeManager =
      {
        ...
      }:

      {
        nixpkgs.overlays = [
          inputs.nur.overlays.default
        ];
      };
  };
}
