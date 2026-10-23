{
  inputs,
  ...
}:

{
  den.aspects.files.files-flake = {
    nixos =
      {
        ...
      }:
      {
        imports = [
          inputs.files.flakeModules
        ];
      };
  };
}
