{
  ...
}:

{
  perSystem =
    {
      ...
    }:

    {
      files.file."README.md" = {
        text = dag.render {
          separator = "\n";
          entries = { };
        };
      };
    };
}
