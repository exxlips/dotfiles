{
  pkgs,
  lib,
  inputs,
  ...
}:
{

  den.aspects.torontik = {
    nixos =
      {
        ...
      }:

      {
        stylix = {
          polarity = "dark";
          enable = true;

          # hamas' theme
          base16Scheme = lib.mkForce "${inputs.tinted-theming}/base16/classic-dark.yaml";

          icons = {
            enable = true;
            dark = "Papirus Dark";
            light = "Papirus Light";
            package = pkgs.papirus-icon-theme;
          };

          cursor = {
            size = 24;
            name = "bibata-cursors";
            package = pkgs.bibata-cursors;
          };

          fonts = {
            monospace = {
              package = pkgs.nerd-fonts.caskaydia-cove;
              name = "CaskaydiaCove Nerd Font Propo";
            };
            sansSerif = {
              package = pkgs.inter;
              name = "Inter";
            };
            serif = {
              package = pkgs.inter;
              name = "Inter";
            };
            emoji = {
              package = pkgs.noto-fonts-color-emoji;
              name = "Noto Color Emoji";
            };
          };
        };
      };
  };
}
