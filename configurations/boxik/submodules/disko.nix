{
  inputs,
  ...
}:

{
  den.aspects.boxik = {
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
          device = "/dev/disk/by-id/ata-Samsung_SSD_870_EVO_250GB_S6PENX0T335658N";

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
                  type = "ext4";
                  mountpoint = "/";
                  mountOptions = [ "subvolid=5" ];

                  subvolumes = {
                    nix.mountpoint = "/nix";
                  };
                };
              };

              swap = {
                label = "swap-${host.hostName}";

                size = "8.8G";
                type = "8200";

                content.type = "swap";
              };
            };
          };
        };
      };
  };
}
