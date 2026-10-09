{
  den,
  ...
}:

{
  den.aspects.system.limine = {
    nixos =
    {
      pkgs,
      ...
    }:

    {
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
