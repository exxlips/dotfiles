{
  ...
}:
{
  den.aspects.services.login.sddm = {
    nixos =
      {
        ...
      }:
      {
        services = {
          displayManager = {
            sddm = {
              enable = true;
              wayland.enable = true;
            };
          };
        };
      };
  };
}
