# DO-NOT-EDIT. This file was auto-generated using github:denful/flake-file.
# Use `nix run .#write-flake` to regenerate it.
{
  outputs = inputs: import ./outputs.nix inputs;

  inputs = {
    flatpak-nix = {
      type = "github";
      owner = "gmodena";
      repo = "flatpak-nix";
    };
    freesm = {
      type = "github";
      owner = "FreesmTeam";
      repo = "FreesmLauncher";
    };
    hjem = {
      type = "github";
      owner = "feel-co";
      repo = "hjem";
    };
    qylock = {
      type = "github";
      owner = "Darkkal44";
      repo = "qylock";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      type = "github";
      owner = "nix-community";
      repo = "stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
