{
  lib,
  ...
}:
{

  den.aspects.torontik = {
    nixos =
      {
        pkgs,
        ...
      }:

      {
        stylix = {
          polarity = "dark";
          enable = true;

          # my own theme
          base16Scheme = lib.mkForce {
            name = "Mossier";
            author = "https://github.com/exxlips";
            base00 = "#151515";
            base01 = "#1f1f1f";
            base02 = "#2e2e2e";
            base03 = "#424242";
            base04 = "#bbb6b6";
            base05 = "#e8e3e3";
            base06 = "#ccc8c8";
            base07 = "#bab6b6";
            base08 = "#b37f81";
            base09 = "#b5a996";
            base0A = "#b8a78c";
            base0B = "#79826d";
            base0C = "#8da8a4";
            base0D = "#a7b9c9";
            base0E = "#ac97b0";
            base0F = "#bbb6b6";
          };

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
