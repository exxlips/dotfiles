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
    };
  };
}
