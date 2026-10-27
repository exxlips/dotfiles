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

          # pythonshit
          python3Packages.capstone
          python3Packages.colorama
          python3Packages.fusepy
          python3Packages.keystone-engine
          python3Packages.pycryptodome
          python3Packages.pycryptodomex
          python3Packages.pyserial
          python3Packages.pyside6
          python3Packages.pyusb
          python3Packages.setuptools
          python3Packages.shiboken6
          python3Packages.unicorn
          python3Packages.wheel

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
          macchina
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
