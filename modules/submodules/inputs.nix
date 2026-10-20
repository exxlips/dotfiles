{
  den,
  ...
}:

{
  flake-file.inputs = {
    nixpkgs = {
      url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    };

    wrapper-modules = {
      type = "github";
      owner = "BirdeeHub";
      repo = "wrapper-modules";
    };

    den = {
      type = "github";
      owner = "denful";
      repo = "den";
    };

    qylock = {
      type = "github";
      owner = "Darkkal44";
      repo = "qylock";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    flatpak-nix = {
      type = "github";
      owner = "gmodena";
      repo = "flatpak-nix";
    };

    hjem-rum = {
      type = "github";
      owner = "snugnug";
      repo = "hjem-rum";
    };

    nh = {
      type = "github";
      owner = "nix-community";
      repo = "nh";
    };

    nur = {
      type = "github";
      owner = "Darkkal44";
      repo = "nur";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
  };
}
