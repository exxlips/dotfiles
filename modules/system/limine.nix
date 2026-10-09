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
 
      # boot config
      boot = {
        loader = {
          limine = {
            enable = true;
            maxGenerations = 15;
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
