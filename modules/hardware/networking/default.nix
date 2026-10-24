# default.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.hardware.networking = {

    # type
    nixos =
      {
        config,
        ...
      }:

      {
        # networking settings (don't really matter tbh)
        networking = {
          nftables = {
            enable = true;
            tables.zapret = {
              family = "inet";
              content = ''
                chain post {
                  type filter hook postrouting priority mangle; policy accept;
                  meta mark & 0x40000000 == 0 tcp dport { 80, 443 } ct original packets 1-6 queue num ${toString config.services.zapret.qnum} bypass
                 }
              '';
            };
          };
          networkmanager.enable = true;
          nameservers = [
            "1.1.1.1#one.one.one.one"
            "9.9.9.9#dns.quad9.net"
          ];
        };
        services.resolved = {
          enable = true;
          domains = [ "~." ];
          dnsovertls = "true";
        };
      };
  };
}

# end
