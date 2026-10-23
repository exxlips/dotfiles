{
  inputs,
  ...
}:

let
  dag = inputs.dag.lib { inherit (inputs.nixpkgs) lib; };
in
{
  config = {
    perSystem = { ... }: {
      files.file."README.md" = {
        text = dag.render {
          separator = "\n";
          entries = { };
        };
      };
    };
  };
}
