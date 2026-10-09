{
  den,
  ...
}:

{
  den.aspects.system.limine =
  {
    ...
  }:

  {
    nixos =
    {
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
        };
        kernelPackages = pkgs.linuxPackages_latest;
      };
    };
  };
}
