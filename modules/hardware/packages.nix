# packages.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.hardware.packages = {

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

          # someshit
          ripgrep
          fish
          cargo
          eza
          tree
          neovim
          luau-lsp
          vim
          fastfetch
          rojo
          bat
          waydroid
          discord
          mpv
          vlc
          android-tools
          python3
          python314
          python313
          pipx

          # formatters
          nixfmt
          prettier
          black
          rustfmt

          # lsp-servers
          nixd
          python3Packages.python-lsp-server
          rust-analyzer
          yaml-language-server
          vscode-langservers-extracted
        ];
      };
  };
}

# end
