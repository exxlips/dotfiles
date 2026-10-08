{
  self,
  inputs,
  config,
  ...
}:

{
  flake.nixosConfigurations.torontik = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = with config.flake.aspects.nixos; [
      torontikConf
    ];
  };
}
