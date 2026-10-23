{
  ...
}:

{
  den.aspects.miscellaneous.nur = {
    nixos =
      {
        inputs,
        ...
      }:
      {
        nixpkgs.overlays = [
          inputs.nur.overlays.default
        ];
      };

    homeManager =
      {
        inputs,
        ...
      }:

      {
        nixpkgs.overlays = [
          inputs.nur.overlays.default
        ];
      };
  };
}
