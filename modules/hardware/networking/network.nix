# network(ing).nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.hardware.networking.network = {

    # type
    nixos =
      {
        ...
      }:

      {
        # networking settings (don't really matter tbh)
        networking = {
          nftables.enable = true;
          networkmanager.enable = true;
        };
      };
  };
}

# end
