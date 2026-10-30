{
  ...
}:
{
  den.aspects.misc.fonts = {
    homeManager =
      {
        pkgs,
        ...
      }:
      {
        fonts.packages = with pkgs; [
          nerd-fonts.caskaydia-cove
          nerd-fonts.jetbrains-mono
          nerd-fonts.inconsolata
          nerd-fonts.fira-code
        ];
      };
  };
}
