# qylock.nix..~

{
  lib,
  inputs,
  ...
}:

# main module (with let in's)
let
  qylockModule = inputs.qylock.nixosModules.default;
in
{
  den.aspects.styles.qylock = {

    # type
    nixos = { ... }: {
      imports = [ qylockModule ];

      services.displayManager.gdm.enable = lib.mkForce false;

      services.displayManager.defaultSession = "niri";

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
