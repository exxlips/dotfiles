{
  ...
}:

{
  den.aspects.compositors.mangowc = {
    nixos =
      {
        inputs,
        pkgs,
        ...
      }:
      {
        imports = [
          inputs.mango.nixosModules.mango
        ];

        programs.mango = {
          enable = true;

          package = pkgs.mango;
        };
      };

    homeManager =
      {
        inputs,
        osConfig,
        ...
      }:
      {
        imports = [
          inputs.mangowc.hmModules.mango
        ];

        wayland.windowManager.mango = {
          enable = true;

          package = osConfig.programs.mango.package;

          systemd.enable = true;
        };
      };
  };
}
