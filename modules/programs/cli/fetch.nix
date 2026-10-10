{
  den,
  ...
}:

{
  den.aspects.programs.cli.fetch = {
    nixos =
    {
      pkgs,
      ...
    }:

    {
      (pkgs.fetch.overrideAttrs (oldAttrs: {
        dontStrip = false;
        stripAllList = [ "bin" ];

        dontMoveLibexec = true;
        separateDebugInfo = false;
      }))
    };
  };
}
