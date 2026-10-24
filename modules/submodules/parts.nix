{
  inputs,
  ...
}:

{
  config = {
    systems = [
      "x86_64-linux"
      "x86_64-darwin"
    ];

    _module.args.dag = inputs.dag.lib { inherit (inputs.nixpkgs) lib; };
  };
}
