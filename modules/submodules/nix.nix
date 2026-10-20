# nix.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.submodules.nix = {
   
    # type
    nixos =
    {
      ...
    }:

    { 
 
      # nixpkgs/nix config
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
          auto-optimise-store = true;
          trusted-users = [ "@wheel" ];
          accept-flake-config = true;
          warn-dirty = false;
      };
      system.autoUpgrade = {
        enable = true;

        dates = "*-*-1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31 05:00:00";

        flake = "/home/vadya/dotfiles";

        allowReboot = false;
        flags = [ "-L" ];
      };
    };
  };
}

# end
