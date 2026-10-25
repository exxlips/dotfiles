{
  ...
}:
{
  den.aspects.misc.finix = {
    finix =
      {
        pkgs,
        ...
      }:
      {
        finit.services.network-manager = {
          description = "Network";
          runlevel = "2345";
          conditions = "service/syslogd/ready";
          command = "${pkgs.networkanager}/bin/NetworkManager -n";
        };
      };
  };
}
