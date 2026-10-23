{
  inputs,
  ...
}:

{
  _module.args.dag = inputs.dag.lib { inherit (inputs.nixpkgs) lib; };

  den.aspects.files.dag = {
    nixos =
      {
        ...
      }:

      {
        imports = [
          inputs.dag.nixosModules.default
        ];

      };
  };
}
