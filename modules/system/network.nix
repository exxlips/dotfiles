{
  den,
  ...
}:

{
  den.aspects.system.networking =
  {
    pkgs,
    ...
  }:

  {
    nixos =
    {
      ...
    }:

    {
      networking = {
        nftables.enable = true;
        networkmanager.enable = true;
      };
    };
  };
}
