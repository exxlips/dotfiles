# nix.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.misc.nix.settings = {

    # type
    nixos =
      {
        ...
      }:

      {

        # nixpkgs/nix config
        nixpkgs.config.allowUnfree = true;
        nix.settings = {
          experimental-features = [
            "nix-command"
            "flakes"
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
