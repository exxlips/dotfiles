# limine.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.system.limine = {

    # type
    nixos =
    {
      pkgs,
      ...
    }:

    {

      # stop stylix targeting limine
      stylix.targets.limine.enable = false;
 
      # boot config
      boot = {
        loader = {
          limine = {
            enable = true;
            maxGenerations = 15;

            style = {
              wallpapers = [ ../../wallpapers/0f6oxa9y9jlb1.png ];
            };
             extraConfig = ''
               editor_enabled: yes
               term_margin: 0
               term_font_scale: 2x2
               term_backdrop: 661e1e2e
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

# end
