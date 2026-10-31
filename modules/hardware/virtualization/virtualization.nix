{
  ...
}:

{
  den.aspects.hardware.virtualization.main = {

    nixos =
      {
        pkgs,
        ...
      }:

      {

        programs.virt-manager.enable = true;

        virtualisation.libvirtd = {
          enable = true;
          qemu = {
            package = pkgs.qemu_kvm;
            runAsRoot = true;
            swtpm.enable = true;
          };
        };

        networking = {
          firewall = {
            enable = true;
            trustedInterfaces = [
              "virbr0"
              "wlp0s20f3"
            ];
          };

          nat = {
            enable = true;
            internalInterfaces = [ "virbr0" ];
            externalInterface = "wlp0s20f3";
          };
        };

        virtualisation.waydroid.enable = true;
      };
  };
}

# end
