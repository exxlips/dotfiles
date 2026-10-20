{
  description = "dotfile flake";

  outputs = inputs:
  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.den.flakeModule
      (inputs.import-tree [ ./hosts ./modules ])
    ];
  };
}
