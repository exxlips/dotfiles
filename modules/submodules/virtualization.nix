# virtualization.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.submodules.virtualization = {

    # type
    nixos =
    {
      pkgs,
      ...
    }:

    {

      # virt manager is top tier
      programs.virt-manager.enable = true;

      virtualisation.libvirtd = {
        enable = true;
        qemu = {
          package = pkgs.qemu_kvm;
          runAsRoot = true;
          swtpm.enable = true;
        };
      };

      # settings for wifi in virtual-manager
      networking = {
        firewall = {
          enable = true;
          trustedInterfaces = [ "virbr0" "wlp0s20f3" ]; 
        };

        # nat support, essential
        nat = {
          enable = true;
          internalInterfaces = [ "virbr0" ];
          externalInterface = "wlp0s20f3";
        };
      };

      # waydroid cuz i feel like it
      virtualisation.waydroid.enable = true;
    };
  };
}

# end
