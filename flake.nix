{
  inputs = {
    nixpkgs = {
      url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    };
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.flake-file.flakeModules.default
      (inputs.import-tree [ ./hosts ./modules ])
    ];
  };
}
