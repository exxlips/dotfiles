{
  den,
  ...
}:

{
  den.aspects.shells.noctalia.default = {
    includes = [
      den.aspects.shells.noctalia.settings
    ];

    meta = {
      bar = "vertical";
    };

    nixos =
      {
        ...
      }:
      {
        programs.noctalia = {
          enable = true;
          recommendedServices.enable = true;
        };

        security.pam.services = {
          noctalia.u2fAuth = true;
          quickshell.u2fAuth = true;
        };
      };

    homeManagerNixos =
      {
        osConfig,
        ...
      }:
      {
        programs.noctalia = {
          inherit (osConfig.programs.noctalia)
            enable
            package
            ;

          systemd.enable = true;
        };

        stylix.targets = {
          noctalia.enable = true;
        };
      };
  };
}
