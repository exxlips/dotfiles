# hardware-configuration.nix..~
{
  config,
  den,
  ...
}:

{
  den.aspects.torontik.hardware =
  {
    host,
    user,
    ...
  }:

  {
    nixos =
    {
      config,
      lib,
      pkgs,
      modulesPath,
      ...
    }:

    {
      # imports
      imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
      ];

      # boot sets
      boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usbhid" "usb_storage" "sd_mod" ];
      boot.initrd.kernelModules = [ "i915" ];
      boot.kernelModules = [ "kvm-intel" "thinkpad_acpi" ];
      boot.extraModulePackages = [];
 
      # filesystems/partitions
      fileSystems."/" = {
        device = "/dev/disk/by-uuid/187b6ccb-b277-4345-8fc1-dce72cf930b4";
        fsType = "btrfs";
      };

      fileSystems."/home" = {
        device = "/dev/disk/by-uuid/187b6ccb-b277-4345-8fc1-dce72cf930b4";
        fsType = "btrfs";
        options = [ "subvol=home" ];
      };

      fileSystems."/nix" = {
        device = "/dev/disk/by-uuid/187b6ccb-b277-4345-8fc1-dce72cf930b4";
        fsType = "btrfs";
        options = [ "subvol=nix" ];
      };

      fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/1712-ED0E";
        fsType = "vfat";
        options = [ "fmask=0077" "dmask=0077" ];
      };

      swapDevices = [
        { device = "/dev/disk/by-uuid/d0660382-bd2b-43f8-b3f2-f2e0ac0a82f9"; }
      ];

      # miscellaneous
      nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
      hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    };
  };
}
