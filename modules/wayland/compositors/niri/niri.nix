{
  self,
  inputs,
  ...
}:

{
  perSystem =
  {
    pkgs,
    lib,
    ...
  }:

  {
    packages.niri = inputs.wrapper-modules.wrappers.niri.wrap {
      settings = {
        input.keyboard = {
          xkb.layout = "us,ru";
        };

        layout.gaps = 5;

        binds = {
          "Mod+T".spawn-sh = lib.getExe pkgs.kitty;
          "Mod+Q".close-window = {};
        };
      }  ;
    };
  };
}
