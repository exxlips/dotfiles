{
  den,
  ...
}:

{
  den.aspects.system.hostname = {
    nixos =
    {
      host,
      ...
    }:

    {
      networking.hostName = host.hostName;
    };
  };
}
