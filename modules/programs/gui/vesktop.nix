# vesktop.nix..~

{
  den,
  ...
}:

{

  # main aspect
  den.aspects.programs.gui.vesktop = {

    # type
    homeManager =
    {
      pkgs,
      config,
      ...
    }:
    # omg
    let
      colors = config.lib.stylix.colors.withHashtag;
    in
    {
      # home packages
      home.packages = [
        pkgs.vesktop
      ];

      # main thing
      programs.vesktop = {
        enable = true;

        # settings
        settings = {

          # i love unstable
          discordBranch = "canary";

          # title bars
          nativeTitleBar = true;
          customTitleBar = false;

          enableShadow = true;
          enableRoundedCorners = true;

          # custom theming
          splashTheming = true;
          splashBackground = colors.base00;
          splashColor = colors.base0D;

          tray = true;
          minimizeToTray = true;
        };

        # the vencord settings
        vencord.settings = {
          useQuickCss = true;
          frameless = true;
          transparent = false;

          # plugins needed
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

# end
