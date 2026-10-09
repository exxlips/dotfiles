{
  den,
  ...
}:

{
  den.aspects.theming.qylock =
  {
    ...
  }:

  {
    nixos =
    {
      inputs,
      ...
    }:

    {
      imports = [
        inputs.qylock.nixosModules.default
      ];

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
