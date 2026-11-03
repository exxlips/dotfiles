{
  ...
}:

{
  den.aspects.programs.gui.ayugram = {
    description = "great messenger";

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
