{
  self,
  inputs,
  ...
}:

{
  flake.nixosConfigurations.torontik = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      self.nixosModules.torontikConf
    ];
  };
}
