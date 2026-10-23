# hostname.nix.

{
  den,
  ...
}:

# main aspect
{
  den.aspects.hardware.hostname = {
    nixos =
      {
        host,
        ...
      }:

      {

        # fuckass shit needed for multiple hosts
        networking.hostName = host.hostName;
      };
  };
}
