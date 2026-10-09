{
  den,
  inputs,
  self,
  ...
}:

{
  den.aspects.compositors.niri =
  {
    pkgs,
    lib,
    self',
    ...
  }:

  {
    programs.niri = {
      enable = true;
      package = self'.packages.${pkgs.stdenv.hostPlatform.system}.niri;
    };
  };
  
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
      };
    };
  };
}
