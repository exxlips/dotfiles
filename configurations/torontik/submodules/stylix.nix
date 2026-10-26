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
            base04 = "#bab7b6";
            base05 = "#e8e3e3";
            base06 = "#cfcaca";
            base07 = "#bfbbbb";
            base08 = "#855f5f";
            base09 = "#8c8a6c";
            base0A = "#7e9973";
            base0B = "#738b8c";
            base0C = "#8892a6";
            base0D = "#8f7f99";
            base0E = "#8f818d";
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
