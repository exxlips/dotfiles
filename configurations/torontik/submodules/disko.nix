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
                label = "esp-${host.hostName}";
                priority = 1;
                start = "4096s";
                end = "2101247s";
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
                label = "root-${host.hostName}";
                priority = 2;
                start = "2101248s";
                end = "964679871s";
                size = "459G";
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
                label = "root-${host.hostName}";
                priority = 3;
                start = "964679872s";
                end = "1000215143s";
                size = "17G";
                type = "8200";

                content.type = "swap";
              };
            };
          };
        };
      };
  };
}
