{
  lib,
  ...
}:
{
  den.aspects.misc.version = {
    nixos =
      {
        config,
        ...
      }:
      {
        system.stateVersion = lib.mkDefault "26.11";
        system.nixos.tags = [ config.networking.hostName ];
      };
    homeManager =
      {
        ...
      }:
      {
        home.stateVersion = lib.mkDefault "26.11";
      };
  };
}
