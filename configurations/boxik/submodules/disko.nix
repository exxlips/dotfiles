{
  inputs,
  ...
}:
{
  den.aspects.boxik = {
    description = ''
      written by the same host, torontik
    '';

    nixos =
      {
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
                size = "1G";
                type = "EF00";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [
                  "fmask=0077"
                  "dmask=0077"
                ];
              };
            };

            swap = {
              size = "8.8G";
              content.type = "swap";
            };

            root = {
              size = "100%";
              content = {
                type = "ext4";
                extraArgs = [ "-f" ];
                subvolumes = {
                  "/root".mountpoint = "/";
                  "/nix".mountpoint = "/nix";
                };
              };
            };
          };
        };
      };
  };
}
