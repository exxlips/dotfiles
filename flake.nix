{
  description = "best flake ever created (jk_)";
 
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

    den = {
      type = "github";
      owner = "denful";
      repo = "den";
    };

    hjem = {
      type = "github";
      owner = "feel-co";
      repo = "hjem";
    };

    hjem-rum = {
      type = "github";
      owner = "snugnug";
      repo = "hjem-rum";
    };

    stylix = {
      type = "github";
      owner = "nix-community";
      repo = "stylix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    nur = {
      type = "github";
      owner = "nix-community";
      repo = "NUR";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    qylock = {
      type = "github";
      owner = "Darkkal44";
      repo = "qylock";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    home-manager = {
      type = "github";
      owner = "nix-community";
      repo = "home-manager";
    };

    sops-nix = {
      type = "github";
      owner = "Mic92";
      repo = "sops-nix";
    };

    flatpak-nix = {
      type = "github";
      owner = "gmodena";
      repo = "nix-flatpak";
    };

    wrapper-modules = {
      type = "github";
      owner = "BirdeeHub";
      repo = "nix-wrapper-modules";
    };

    spicetify-nix = {
      type = "github";
      owner = "Gerg-L";
      repo = "spicetify-nix";
    };
  };  

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.flake-file.flakeModules.default
      (inputs.import-tree [ ./hosts ./modules ])
    ];
  };
}
