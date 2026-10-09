{
  den,
  ...
}:

{
  den.aspects.theming.stylix = {
    nixos =
    {
      config,
      lib,
      pkgs,
      inputs,
      ...
    }:
    let
      colors = config.lib.stylix.colors;
    in
    {
      stylix = {
        polarity = "dark";
        enable = true;

        base16Scheme = lib.mkForce {
          name = "Paradise";
          author = "https://github.com/manas140";
          base00 = "#151515";
          base01 = "#1f1f1f";
          base02 = "#2e2e2e";
          base03 = "#424242";
          base04 = "#bbb6b6";
          base05 = "#e8e3e3";
          base06 = "#e8e3e3";
          base07 = "#e8e3e3";
          base08 = "#b66467";
          base09 = "#d9bc8c";
          base0A = "#d9bc8c";
          base0B = "#8c977d";
          base0C = "#8aa6a2";
          base0D = "#8da3b9";
          base0E = "#a988b0";
          base0F = "#bbb6b6";
        };

        icons = {
          enable = true;

          dark = "Papirus Dark";
          light = "Papirus Light";

          package = pkgs.papirus-icon-theme;
        };
        cursors = {
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
          imports = [
            inputs.stylix.nixosModules.stylix
          ];
        };
      };
    };
  };
}
