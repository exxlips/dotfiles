{
  inputs,
  ...
}:

{
  den.aspects.files.sops = {

    nixos =
      {
        ...
      }:

      let
        sopsModule = inputs.sops-nix.nixosModules.default;
      in
      {

        imports = [ sopsModule ];

        sops = {
          defaultSopsFile = ../../secrets/api-keys.yaml;
          age.keyFile = "/var/lib/sops-nix/keys.txt";
          age.generateKey = true;

          secrets = {
            roblox = { };

            github_pat = { };
            deepseek_apiA = { };
            deepseek_apiB = { };
          };
        };
      };
  };
}
