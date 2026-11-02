{
  ...
}:

{
  den.aspects.programs.desktop.plasma = {
    description = ''
      windows-like de
      i kinda like it
    '';

    nixos =
      {
        pkgs,
        ...
      }:
      {
        environment.systemPackages = [
          pkgs.kdePackages.ktorrent
        ];

        services = {
          desktopManager.plasma6.enable = true;
        };
      };
  };
}
