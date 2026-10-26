{
  ...
}:

{
  den.aspects.hardware.boot.limine = {

    nixos =
      {
        pkgs,
        ...
      }:

      {

        stylix.targets.limine.enable = false;

        boot = {
          loader = {
            limine = {
              enable = true;
              maxGenerations = 15;

              style = {
                wallpapers = [ ../../../wallpapers/nix-wallpaper-nineish-dark-gray.png ];
              };
              extraConfig = ''
                default_entry: 1
                   
                editor_enabled: yes
                term_margin: 0
                term_font_scale: 2x2
                term_backdrop: 661e1e2e

                !default_entry
              '';
            };
            efi.canTouchEfiVariables = true;
            systemd-boot.enable = false;
          };
          kernelPackages = pkgs.linuxPackages_latest;
        };
      };
  };
}
