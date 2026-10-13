# ayugram.nix..~

{
  den,
  ...
}:


# main module
{
  den.aspects.programs.gui.ayugram = {
    description = ''
      great messenger
    '';

    # type
    nixos =
    {
      pkgs,
      ...
    }:

    {
      environment.systemPackages = with pkgs; [
        ayugram-desktop
      ];
    };
  };
}
