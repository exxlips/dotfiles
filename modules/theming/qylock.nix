# qylock.nix..~

{
  den,
  lib,
  inputs,
  ...
}:


# main module (with let in's)
let
  qylockModule = inputs.qylock.nixosModules.default;
in
{
  den.aspects.theming.qylock = {

    # type
    nixos = { pkgs, ... }: {
      imports = [ qylockModule ];

      services.displayManager.gdm.enable = lib.mkForce false;

      services.displayManager.defaultSession = "niri";

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
