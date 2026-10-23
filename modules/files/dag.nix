{
  inputs,
  ...
}:

{
  den.aspects.files.dag = {
    nixos =
      {
        ...
      }:

      {
        imports = [
          inputs.dag.flakeModules
        ];
      };
  };
}
