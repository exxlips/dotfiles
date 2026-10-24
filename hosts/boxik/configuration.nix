{
  den,
  ...
}:

{
  den.default.includes = [
    den.batteries.primary-user
    den.batteries.self'
    den.batteries.hostname
    den.batteries.inputs'
  ];

  den.hosts.x86_64-linux.boxik = {
    users.vadya = {
      userName = "vadya";
      classes = [ "homeManager" ];
    };

    includes = with den.aspects; [
      boxik.hardware
      boxik.configuration

      games.supertuxkart

      files.sops

      miscellaneous.nur

      miscellaneous.nix.settings
      miscellaneous.nix.substituters

      miscellaneous.users.main

      programs.cli.helper
      programs.cli.flatpak
      programs.cli.mov-cli

      programs.gui.ayugram

      hardware.audio

      hardware.boot.limine
      hardware.boot.plymouth
      hardware.boot.kernel

      hardware.networking
      hardware.networking.zapret

      hardware.battery
      hardware.packages
      hardware.hostname

      styles.stylix
      styles.qylock
      styles.gtk
      styles.qt

      compositors.niri
    ];
  };

  den.aspects = {
    vadya.includes = with den.aspects; [
      miscellaneous.home

      editors.helix.languages
      editors.helix.themes
      editors.helix.settings

      programs.cli.git
      programs.cli.starship
      programs.cli.fish

      programs.gui.spotify
      programs.gui.vesktop
      programs.gui.kitty
      programs.gui.throne
    ];

    boxik.configuration = {
      nixos =
        {
          pkgs,
          lib,
          ...
        }:

        {
          system.stateVersion = "26.05";
          time.timeZone = "Europe/Moscow";

          i18n.defaultLocale = "en_US.UTF-8";

          security.rtkit.enable = true;

          programs.firefox.enable = true;
          programs.throne = {
            enable = true;
            tunMode.enable = true;
          };

          nixpkgs.hostPlatform = lib.mkForce "x86_64-linux";
        };
    };
  };
}
