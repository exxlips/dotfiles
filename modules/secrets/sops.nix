# sops.nix..~

{
  den,
  inputs,
  ...
}:


# main aspect
{
  den.aspects.secrets.sops = {

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
      imports = [ inputs.sops.nixosModules.default ];

      sops = {
        defaultSopsFile = ../../secrets/api-keys.yaml;
        age.keyFile = "/var/lib/sops-nix/keys.txt";

        # secrets so sops could see the secrets lol
        secrets.roblox = {};

        secrets.github_pat = {
          owner = "vadya";
          mode = "0400";
        };
      };
    };
  };
}

# end
