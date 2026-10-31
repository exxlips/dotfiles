{
  inputs,
  ...
}:

{
  den.aspects.programs.desktop.mangowc = {
    description = ''
      i tried this
      kinda ass ngl
    '';

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
