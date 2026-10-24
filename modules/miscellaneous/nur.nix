{
  inputs,
  ...
}:

{
  den.aspects.miscellaneous.nur = {
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
