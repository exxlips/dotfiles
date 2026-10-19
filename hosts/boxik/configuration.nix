{
  den,
  self,
  inputs,
  config,
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
      includes = [
        den.aspects.home

        den.aspects.editors.helix.languages
        den.aspects.editors.helix.themes
        den.aspects.editors.helix.settings

        den.aspects.programs.cli.git
        den.aspects.programs.cli.fish

        den.aspects.programs.gui.kitty
        den.aspects.programs.gui.throne
      ];
    };

    includes = [
      den.aspects.boxik.hardware
      den.aspects.boxik.configuration

      den.aspects.gaming.supertuxkart

      den.aspects.programs.cli.helper

      den.aspects.programs.gui.ayugram

      den.aspects.submodules.users
      den.aspects.submodules.nix
      den.aspects.submodules.flatpak

      den.aspects.secrets.sops

      den.aspects.system.audio
      den.aspects.system.limine
      den.aspects.system.battery
      den.aspects.system.network
      den.aspects.system.packages

      den.aspects.theming.stylix
    ];
  };

  den.aspects.boxik.configuration = {
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
}
