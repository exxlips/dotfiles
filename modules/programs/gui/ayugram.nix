{
  den,
  ...
}:

{
  den.aspects.programs.gui.ayugram = {
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
