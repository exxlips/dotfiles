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
      includes = [
        den.aspects.home

        den.aspects.editors.helix.languages
        den.aspects.editors.helix.themes
        den.aspects.editors.helix.settings

        den.aspects.programs.cli.git
        den.aspects.programs.cli.starship

        den.aspects.programs.gui.kitty
        den.aspects.programs.gui.throne
      ];
    };

    # systems
    includes = [
      den.aspects.torontik.hardware
      den.aspects.torontik.configuration

      den.aspects.gaming.supertuxkart
      den.aspects.gaming.minecraft

      den.aspects.submodules.users
      den.aspects.submodules.nix
      den.aspects.submodules.flatpak
      den.aspects.submodules.virtualization
    
      den.aspects.system.audio
      den.aspects.system.limine
      den.aspects.system.network
      den.aspects.system.packages

      den.aspects.theming.qylock
      den.aspects.theming.stylix

      den.aspects.compositors.niri
    ];
  };

  # main configuration
  den.aspects.torontik.configuration = {

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

# end
