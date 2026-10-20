{
  inputs = {
    nixpkgs = {
      url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    };

    flake-parts = {
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };

    flake-file = {
      type = "github";
      owner = "vic";
      repo = "flake-file";
    };

    import-tree = {
      type = "github";
      owner = "vic";
      repo = "import-tree";
    };
  };
  
  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.flake-file.flakeModules.default
      (inputs.import-tree [ ./hosts ./modules ])
    ];
  };
}
