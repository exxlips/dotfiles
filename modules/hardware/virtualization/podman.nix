{
  ...
}:
{
  den.aspects.hardware.virtualization.podman = {
    nixos =
      {
        pkgs,
        ...
      }:
      {
        virtualisation = {
          podman = {
            enable = true;

            extraPackages = with pkgs; [
              podman-tui
              podman-compose
            ];

            dockerCompat = true;
            dockerSocket.enable = true;

            autoPrune = {
              enable = true;
              flags = [
                "--all"
                "--volumes"
              ];
            };
          };
        };
      };
  };
}
