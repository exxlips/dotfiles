{
  inputs,
  ...
}:

{
  den.aspects.compositors.mangowc = {
    nixos =
      {
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
        osConfig,
        ...
      }:
      {
        imports = [
          inputs.mango.hmModules.mango
        ];

        wayland.windowManager.mango = {
          enable = true;

          package = osConfig.programs.mango.package;

          systemd.enable = true;
        };
      };
  };
}
