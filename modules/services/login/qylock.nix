{
  lib,
  inputs,
  ...
}:

let
  qylockModule = inputs.qylock.nixosModules.default;
in
{
  den.aspects.services.login.qylock = {

    nixos = { ... }: {
      imports = [ qylockModule ];

      services.displayManager.gdm.enable = lib.mkForce false;

      programs.qylock = {
        enable = true;
        theme = "terraria";
        sddm.enable = true;
        quickshell.enable = true;
      };
    };
  };
}
