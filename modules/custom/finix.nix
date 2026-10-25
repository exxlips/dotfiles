{
  den,
  lib,
  inputs,
  ...
}:
{
  den.classes.finix.description = "Finix system";

  den.schema.host.imports = [
    (
      {
        config,
        ...
      }:
      lib.mkIf (config.class == "finix") {
        instantiate =
          {
            modules,
            ...
          }:
          inputs.finix.lib.finixSystem {
            inherit modules;

            lib = inputs.nixpkgs.lib;
            specialArgs = { inherit inputs; };
          };

        intoAttr = [
          "finixConfigurations"
          config.name
        ];
      }
    )
  ];

  den.default.includes = [
    (
      {
        host,
        ...
      }:

      {
        name = "finix/nixpkgs-shim";
      }
      // lib.optionalAttrs ((host.class or null) == "finix") {
        finix =
          {
            config,
            ...
          }:
          {
            options.nixpkgs = {
              hostPlatform = lib.mkOption {
                type = lib.types.str;
              };

              config = lib.mkOption {
                type = lib.types.attrs;
                default = { };
              };
            };

            config.nixpkgs.pkgs = import inputs.nixpkgs {
              system = config.nixpkgs.hostPlatform;
              inherit (config.nixpkgs) config;
            };
          };
      }
    )
  ];
}
