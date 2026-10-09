{
  den,
  inputs,
  ...
}:

let
  qylockModule = inputs.qylock.nixosModules.default;
in
{
  den.aspects.theming.qylock = {
    nixos = { pkgs, ... }: {
      imports = [ qylockModule ];

      services.displayManager.sddm.enable = true;
      services.displayManager.sddm.wayland.enable = true;

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
