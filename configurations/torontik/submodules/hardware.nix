{
  ...
}:
{
  den.aspects.torontik = {
    nixos =
      {
        inputs,
        ...
      }:
      {
        imports = [
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-x1-7th-gen
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
