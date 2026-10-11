# packages.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.system.packages = {
   
    # type
    nixos =
    {
      pkgs,
      ...
    }:

    { 
      # pkgs
      environment.systemPackages = with pkgs; [
        kdePackages.sddm
        qt6.qtdeclarative
        qt6.qt5compat
        qt6.qtsvg
        qt6.qtmultimedia
        gst_all_1.gst-plugins-base
        gst_all_1.gst-plugins-good
        gst_all_1.gst-plugins-bad
        gst_all_1.gst-plugins-ugly
        fzf

        ripgrep
        fish
        eza
        tree
        neovim
        luau-lsp
        vim
        fastfetch
        rojo
        bat
        waydroid
      ];
    };
  };
}

# end
