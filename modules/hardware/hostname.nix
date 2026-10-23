# hostname.nix.

{
  den,
  ...
}:

# main aspect
{
  den.aspects.system.hostname = {
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
