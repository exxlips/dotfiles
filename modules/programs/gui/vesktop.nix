{
  den,
  ...
}:

{
  den.aspects.programs.gui.vesktop = {
    nixos =
    {
      pkgs,
      ...
    }:

    {
      environment.systemPackages = [
        pkgs.vesktop
      ];

      programs.nixcord = {
        enable = true;
        vesktop.enable = true;

        vesktop.settings = {
          discordBranch = "unstable";
          minimizeToTray = true;
        };

        vencord.settings.plugins = {
          fakeNitro.enable = true;
          voiceMessages.enable = true;
          volumeBooster.enable = true;
          shikiCodeblocks.enable = true;
        };
      };
    };
  };
}
