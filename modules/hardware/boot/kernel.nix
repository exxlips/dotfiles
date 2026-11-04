{
  inputs,
  ...
}:
{
  den.aspects.hardware.boot.kernel = {
    nixos =
      {
        pkgs,
        ...
      }:
      {
        nix.settings = {
          extra-substituters = [
            "https://cache.lantian.pub/lantian"
          ];

          extra-trusted-public-keys = [
            "lantian:WVGO7vsRMSEN+h7Lp7kv6SAmrkEXgUGbbXm7jMDjBuQ="
          ];
        };
        boot = {
          kernelPackages =
            inputs.nix-cachyos-kernel.legacyPackages.${pkgs.stdenv.hostPlatform.system}.linuxPackages-cachyos-latest;
        };
      };
  };
}
