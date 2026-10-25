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
          inputs.disko.nixosModules.disko
        ];

        disko = {
          enableConfig = false;
          devices.disk = {
            type = "disk";
            device = "/dev/disk/by-id/nvme-WD_PC_SN740_SDDPMQD-512G-1101_2338EX402191";
            content = {
              type = "gpt";
              partitions = {
                ESP = {
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

                swap = {
                  size = "17G";
                  content.type = "swap";
                };

                root = {
                  size = "100%";
                  content = {
                    type = "btrfs";
                    extraArgs = [ "-f" ];
                    subvolumes = {
                      "/root".mountpoint = "/";
                      "/home".mountpoint = "/home";
                      "/nix".mountpoint = "/nix";
                    };
                  };
                };
              };
            };
          };
        };
      };
  };
}
