{
  den,
  ...
}:

{
  den.aspects.programs.gui.vesktop = {
    homeManager =
    {
      pkgs,
      ...
    }:

    {
      environment.systemPackages = [
        pkgs.vesktop
      ];

      programs.vesktop = {
        enable = true;

        settings = {
          discordBranch = "stable";
          minimizeToTray = true;
        };

        vencord.settings.plugins = {
          fakeNitro.enabled = true;
          shikiCodeblocks.enabled = true;
          voiceMessages.enabled = true;
          volumeBooster.enabled = true;
        };
      };
    };
  };
}
