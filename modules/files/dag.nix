{
  ...
}:

{
  den.aspects.files.dag = {
    nixos =
      {
        inputs,
        ...
      }:

      {
        imports = [
          inputs.dag.nixosModules.default
        ];
      };
  };
}
