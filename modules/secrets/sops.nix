{
  den,
  ...
}:

{
  den.aspects.secrets.sops = {
    nixos =
    {
      inputs',
      ...
    }:

    {
      imports = [ inputs'.sops-nix.nixosModules.sops ];

      sops = {
        defaultSopsFile = ../../secrets/api-keys.yaml;
        age.keyFile = "/var/lib/sops-nix/keys.txt";

        secrets.roblox = {
          owner = "vadya";
          mode = "0400";
        };

        secrets.codeberg_api = {
          owner = "vadya";
          mode = "0400";
        };
      };
    };
  };
}
