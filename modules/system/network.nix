{
  den,
  ...
}:

{
  den.aspects.system.network = {
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
