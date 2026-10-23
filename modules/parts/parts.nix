{
  inputs,
  ...
}:

{
  _module.args.dag = inputs.dag.lib { inherit (inputs.nixpkgs) lib; };

  config = {
    systems = [
      "x86_64-linux"
      "x86_64-darwin"
    ];
  };
}
