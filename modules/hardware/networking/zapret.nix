{
  ...
}:

{
  den.aspects.hardware.networking.zapret = {
    nixos =
      {
        ...
      }:
      {
        services = {
          zapret = {
            enable = true;
            configureFirewall = false;

            params = [
              "--dpi-desync=fake,disorder2"
              "--dpi-desync-ttl=1"
              "--dpi-desync-autottl=1"
            ];

            whitelist = [
              "discord.com"
              "roblox.com"
              "youtube.com"
              "instagram.com"
              "x.com"
              "facebook.com"
            ];
          };
        };
      };
  };
}
