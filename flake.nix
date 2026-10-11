{
  description = "dotfile flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-file.url = "github:denful/flake-file";

    wrapper-modules.url = "github:BirdeeHub/nix-wrapper-modules";
    import-tree.url = "github:denful/import-tree";

    stylix.url = "github:nix-community/stylix";
    den.url = "github:denful/den";
    qylock.url = "github:Darkkal44/qylock";

    hjem.url = "github:feel-co/hjem";
    flatpak-nix.url = "github:gmodena/nix-flatpak";
    hjem-rum.url = "github:snugnug/hjem-rum";
    home-manager.url = "github:nix-community/home-manager";
    nh.url = "github:nix-community/nh";

    nur = {
      url = "github:nix-community/nur";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    freesm.url = "github:FreesmTeam/FreesmLauncher";
  };

  outputs = inputs:
  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.den.flakeModule
      (inputs.import-tree [ ./hosts ./modules ])
    ];
  };
}
