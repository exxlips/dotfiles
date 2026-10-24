{
  ...
}:
{
  den.aspects.hosts.torontik = {
    nixos =
      {
        inputs,
        ...
      }:
      {
        imports = [
          inputs.nixpkgs.nixosModules.notDetected
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-x1-carbon-gen-7th
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
