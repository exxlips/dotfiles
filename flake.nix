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

    dag = {
      type = "github";
      owner = "denful";
      repo = "dag";
    };

    files = {
      type = "github";
      owner = "sini";
      repo = "files";
    };

    flake-file = {
      type = "github";
      owner = "vic";
      repo = "flake-file";
    };

    tinted-schemes = {
      type = "github";
      owner = "tinted-theming";
      repo = "schemes";
      flake = false;
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

    nixos-hardware = {
      type = "github";
      owner = "NixOS";
      repo = "nixos-hardware";
      ref = "master";
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

    noctalia = {
      type = "github";
      owner = "noctalia-dev";
      repo = "noctalia";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    zen = {
      type = "github";
      owner = "0xc000022070";
      repo = "zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
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

    freesm = {
      type = "github";
      owner = "FreesmTeam";
      repo = "FreesmLauncher";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.flake-file.flakeModules.default
        (inputs.import-tree [
          ./hosts
          ./modules
        ])
      ];
    };
}
