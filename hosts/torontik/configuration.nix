# configuration.nix..~

{
  self,
  inputs,
  config,
  den,
  ...
}:

{
  # batteries
  den.default.includes = [
    den.batteries.primary-user
    den.batteries.self'
    den.batteries.hostname
    den.batteries.inputs'
  ];

  # homes
  den.hosts.x86_64-linux.torontik = {
    users.vadya = {
      userName = "vadya";
      classes = [ "homeManager" ];
    };

    # systems
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

      miscellaneous.home
      miscellaneous.nur

      miscellaneous.nix.settings
      miscellaneous.nix.substituters

      miscellaneous.users.main

      files.sops

      hardware.audio

      hardware.boot.limine
      hardware.boot.plymouth
      hardware.boot.kernel

      hardware.networking
      hardware.networking.zapret

      hardware.virtualization.main
      hardware.virtualization.podman

      hardware.battery
      hardware.bluetooth
      hardware.packages
      hardware.hostname
      hardware

      styling.qylock
      styling.stylix

      compositors.niri
    ];
  };

  # main configuration
  den.aspects = {
    vadya.includes = with den.aspects; [
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

    torontik.configuration = {

      # type
      nixos =
        {
          pkgs,
          lib,
          ...
        }:

        {

          # main
          system.stateVersion = "26.11";
          time.timeZone = "Europe/Moscow";

          # time/locales
          i18n.defaultLocale = "en_US.UTF-8";

          # services
          security.rtkit.enable = true;

          # programs (for now, throne only)
          programs.throne = {
            enable = true;
            tunMode.enable = true;
          };

          # nixpkgs setting to prevent errors
          nixpkgs.hostPlatform = lib.mkForce "x86_64-linux";
        };
    };
  };
}

# end
