{
  inputs,
  ...
}:
{
  den.aspects.torontik = {
    nixos =
      {
        ...
      }:
      {
        imports = [
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-x1-8th-gen
        ];

        boot = {
          tmp.cleanOnBoot = true;
          consoleLogLevel = 0;

          kernelModules = [
            "ntsync"
            "kvm_intel"
            "tun"
            "tap"
          ];

          kernelParams = [
            "mem_sleep_default=deep"
            "quiet"
          ];
        };
      };
  };
}
