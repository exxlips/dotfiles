{
  den,
  ...
}:

{
  den.aspects.programs.gui.vesktop = {
    homeManager =
    {
      pkgs,
      config,
      ...
    }:
    let
      colors = config.lib.stylix.colors.withHashtag;
    in
    {

      home.packages = [
        pkgs.vesktop
      ];

      programs.vesktop = {
        enable = true;

        settings = {
          discordBranch = "canary";
          nativeTitleBar = true;
          customTitleBar = false;

          enableShadow = true;
          enableRoundedCorners = true;

          splashTheming = true;
          splashBackground = colors.base00;
          splashColor = colors.base0D;

          tray = true;
          minimizeToTray = true;
        };

        vencord.settings = {
          useQuickCss = true;
          frameless = true;
          transparent = false;

          plugins = {
            fakeNitro.enabled = true;
            shikiCodeblocks.enabled = true;
            voiceMessages.enabled = true;
            volumeBooster.enabled = true;
        };
      };
    };
  };
 };
}
