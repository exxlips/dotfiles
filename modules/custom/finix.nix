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
          "nixosConfigurations"
          config.name
        ];
      }
    )
  ];

  den.policies.nixos-to-finix =
    {
      host,
      ...
    }:
    lib.optional ((host.class or null) == "finix") (
      den.lib.policy.route {
        fromClass = "nixos";
        intoClass = "finix";
        path = [ ];
      }
    );

  den.default.includes = [
    den.policies.nixos-to-finix

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
