{
  den,
  inputs,
  ...
}:

{
  den.aspects.compositors.niri = {
    nixos = { pkgs, lib, self', ... }: {
      programs.niri = {
        enable = true;
        package = self'.packages.niri;
      };
    };
  };

  perSystem = { pkgs, lib, self', ... }: {
    packages.niri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs;
      settings = {
        prefer-no-csd = {};

        spawn-at-startup = [
          lib.getExe self'.packages.noctalia
        ];

        input.keyboard = {
          xkb.layout = "us,ru";
        };

        layout.gaps = 5;
        binds = {
          "Mod+T".spawn-sh = lib.getExe pkgs.kitty;
          "Mod+Q".close-window = {};

          "Mod+Space".spawn-sh = "${lib.getExe self'.packages.noctalia} ipc call launcher toggle";
        };
      };
    };
  };
}
