{
  den,
  ...
}:

{
  den.aspects.system.network =
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
