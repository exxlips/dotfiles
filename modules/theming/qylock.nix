# qylock.nix..~

{
  den,
  inputs,
  ...
}:


# main module (with let in's)
let
  qylockModule = inputs.qylock.nixosModules.default;
in
{
  flake-file.inputs.qylock = {
    type = "github";
    owner = "Darkkal44";
    repo = "qylock";
    inputs = {
      nixpkgs.follows = "nixpkgs";
    };
  };
  
  den.aspects.theming.qylock = {

    # type
    nixos = { pkgs, ... }: {
      imports = [ qylockModule ];

      services.displayManager.sddm.enable = true;
      services.displayManager.sddm.wayland.enable = true;

      # cool collection of sddm themes
      programs.qylock = {
        enable = true;
        theme = "terraria";
        sddm.enable = true;
        quickshell.enable = true;
        themeOptions = {
          terraria.backgroundMode = "time";
        };
      };
    };
  };
}

# end
