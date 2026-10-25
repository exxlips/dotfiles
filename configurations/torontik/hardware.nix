# hardware-configuration.nix..~
{
  ...
}:

# main den aspect
{
  den.aspects.torontik.hardware =
    {
      ...
    }:

    # type
    {
      nixos =
        {
          config,
          lib,
          modulesPath,
          ...
        }:

        {
          # imports
          imports = [
            (modulesPath + "/installer/scan/not-detected.nix")
          ];

          # boot sets
          boot.initrd.availableKernelModules = [
            "xhci_pci"
            "nvme"
            "usbhid"
            "usb_storage"
            "sd_mod"
          ];
          boot.initrd.kernelModules = [ "i915" ];
          boot.kernelModules = [
            "kvm-intel"
            "thinkpad_acpi"
          ];
          boot.extraModulePackages = [ ];

          hardware.enableRedistributableFirmware = true;

          # miscellaneous
          nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
          hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
        };
    };
}
