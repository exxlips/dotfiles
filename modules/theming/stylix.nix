# stylix.nix..~

{
  den,
  inputs,
  ...
}:


# main module (with let in's)
let
  stylixModule = inputs.stylix.nixosModules.stylix;
in
{
  den.aspects.theming.stylix = {
    # cool description
    description = ''
      great nix variant of matugen
    '';
  
    # type
    homeManager =
    {
      ...
    }:

    {

      # stop stylix targetting helix
      stylix.targets.helix.enable = false;
    };

    # another type
    nixos =
      {
        config,
        lib,
        pkgs,
        ...
      }:
      # another let-in
      let
        colors = config.lib.stylix.colors;
      in
      {
 
        # main stylix configuration
        imports = [ stylixModule ]; 

        stylix = {
          polarity = "dark";
          enable = true;

          # manas' theme
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

# end
