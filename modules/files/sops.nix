# sops.nix..~

{
  inputs,
  ...
}:

# main aspect
{
  den.aspects.files.sops = {

    # type
    nixos =
      {
        ...
      }:

      let
        sopsModule = inputs.sops-nix.nixosModules.default;
      in
      {

        # sops settings
        imports = [ sopsModule ];

        sops = {
          defaultSopsFile = ../../secrets/api-keys.yaml;
          age.keyFile = "/var/lib/sops-nix/keys.txt";
          age.generateKey = true;

          # secrets so sops could see the secrets lol
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

# end
