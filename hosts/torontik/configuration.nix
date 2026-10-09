# configuration.nix..~

{
  self,
  inputs,
  config,
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
    };

    includes = [
      den.aspects.torontik.hardware
      den.aspects.torontik.configuration

      den.aspects.editors.helix.languages
      den.aspects.editors.helix.settings
      den.aspects.editors.helix.themes

      den.aspects.home

      den.aspects.programs.cli.git
      den.aspects.programs.cli.starship

      den.aspects.programs.gui.kitty
      den.aspects.programs.gui.throne

      den.aspects.submodules.users
      den.aspects.submodules.nix

      den.aspects.system.audio
      den.aspects.system.limine
      den.aspects.system.network
      den.aspects.system.packages

      den.aspects.theming.qylock
      den.aspects.theming.stylix

      den.aspects.compositors.niri
    ];
  };

  den.aspects.torontik.configuration = {
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

        # programs (for now, firefox and throne)
        programs.firefox.enable = true;
        programs.throne = {
          enable = true;
          tunMode.enable = true;
        };

        # nixpkgs setting to prevent errors
        nixpkgs.hostPlatform = lib.mkForce "x86_64-linux";
      };
    };
}
