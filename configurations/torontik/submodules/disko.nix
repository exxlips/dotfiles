{
  inputs,
  ...
}:

{
  den.aspects.torontik = {
    nixos =
      {
        host,
        ...
      }:

      {
        imports = [
          inputs.disko.nixosModules.disko
        ];

        disko.devices.disk.main = {
          type = "disk";
          device = "/dev/disk/by-id/nvme-WD_PC_SN740_SDDPMQD-512G-1101_2338EX402191";

          content = {
            type = "gpt";

            partitions = {
              ESP = {
                label = "esp";

                size = "1G";
                type = "EF00";

                content = {
                  type = "filesystem";
                  format = "vfat";
                  mountpoint = "/boot";

                  mountOptions = [
                    "fmask=0077"
                    "dmask=0077"
                  ];
                };
              };

              root = {
                label = "nixos-${host.hostName}";

                size = "100%";
                type = "8300";

                content = {
                  type = "btrfs";
                  mountpoint = "/";
                  mountOptions = [ "subvolid=5" ];

                  subvolumes = {
                    home.mountpoint = "/home";
                    nix.mountpoint = "/nix";
                  };
                };
              };
              swap = {
                label = "swap-${host.hostName}";
                size = "16.9G";
                type = "8200";

                content = {
                  type = "swap";
                  resumeDevice = true;
                };
              };
            };
          };
        };
      };
  };
}
