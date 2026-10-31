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

  den.hosts.x86_64-linux.torontik = {
    users.vadya = {
      userName = "vadya";
      classes = [ "homeManager" ];
    };

    includes = with den.aspects; [
      torontik.hardware
      torontik.configuration

      games.supertuxkart
      games.minecraft

      programs.cli.helper
      programs.cli.flatpak
      programs.cli.mov-cli

      programs.gui.ayugram
      programs.gui.zen

      misc.nur
      misc.version
      misc.chaotic
      misc.locales
      misc.users.xdg
      misc.fonts
      misc.variables

      misc.nix.settings
      misc.nix.substituters

      misc.users.main

      files.sops

      hardware.audio

      hardware.boot.limine
      hardware.boot.plymouth
      hardware.boot.kernel
      hardware.boot.udev

      hardware.networking

      hardware

      hardware.virtualization.main
      hardware.virtualization.podman

      hardware.bluetooth
      hardware.packages
      hardware.hostname

      services.login.sddm
      services.login.qylock

      services.tlp
      services.zapret

      styles.qt
      styles.gtk
      styles.stylix
    ];
  };

  den.aspects = {
    vadya.includes = with den.aspects; [
      styles.walogram

      misc.home

      editors.helix.languages
      editors.helix.themes
      editors.helix.settings

      programs.cli.git
      programs.cli.starship
      programs.cli.fish
      programs.cli.fastfetch
      programs.cli.aider

      programs.gui.spotify
      programs.gui.vesktop
      programs.gui.kitty
      programs.gui.wezterm
      programs.gui.throne

      programs.desktop.mangowc
      programs.desktop.mangowc.settings

      programs.desktop.niri
      programs.desktop.niri.binds
      programs.desktop.niri.rules
      programs.desktop.niri.settings

      programs.desktop.noctalia
      programs.desktop.noctalia.settings

      programs.desktop.swaylock
      programs.desktop.waybar
      programs.desktop.tofi
    ];

    torontik.configuration = {

      nixos =
        {
          lib,
          ...
        }:

        {

          system.stateVersion = "26.11";
          time.timeZone = "Europe/Moscow";

          i18n.defaultLocale = "en_US.UTF-8";

          security.rtkit.enable = true;

          programs.throne = {
            enable = true;
            tunMode.enable = true;
          };

          # prevent errors
          nixpkgs.hostPlatform = lib.mkForce "x86_64-linux";
          hardware.enableRedistributableFirmware = lib.mkForce true;
        };
    };
  };
}
