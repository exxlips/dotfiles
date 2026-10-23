{
  ...
}:

{
  config = {
    perSystem = { dag, ... }: {
      files.file."README.md" = {
        text = dag.render {
          separator = "\n";
          entries = { };
        };
      };
    };
  };
}
