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
    den.batteries.hostname
  ];

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

        # boot settings/packages
        boot.loader.systemd-boot.enable = true;
        boot.loader.efi.canTouchEfiVariables = true;
        boot.kernelPackages = pkgs.linuxPackages_latest;

        # networking
        networking.networkmanager.enable = true;

        # nixpkgs/nix
        nixpkgs.config.allowUnfree = true;
        nix.settings = {
          substituters = [
            "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
            "https://cache.nixos.org"
            "https://nix-community.cachix.org"
          ];

          experimental-features = [
            "nix-command"
            "flakes"
          ];
 
          trusted-public-keys = [
            "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
            "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
          ];
        };

        # time/locales
        i18n.defaultLocale = "en_US.UTF-8";

        # services
        services.displayManager.gdm.enable = true;
        services.desktopManager.gnome.enable = true;
        services.pulseaudio.enable = false;
        security.rtkit.enable = true;
        services.pipewire = {
          enable = true;
          alsa.enable = true;
          alsa.support32Bit = true;
          pulse.enable = true;
        };

        # user
        users.users."vadya" = {
          isNormalUser = true;
          description = "vadya";
          extraGroups = [ "networkmanager" "wheel" ];
        };
 
        # programs (for now, firefox and throne)
        programs.firefox.enable = true;
        programs.throne = {
          enable = true;
          tunMode.enable = true;
        };

        # pkgs
        environment.systemPackages = with pkgs; [
          helix
          wget
          git
          vim
          neovim
        ];

        # nixpkgs setting to prevent errors
        nixpkgs.hostPlatform = lib.mkForce "x86_64-linux";
      };
    };
}
