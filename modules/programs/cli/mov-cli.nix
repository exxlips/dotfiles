{
  ...
}:

{
  den.aspects.programs.cli.mov-cli = {
    nixos =
      {
        pkgs,
        ...
      }:

      let
        # nixpkgs passes makeWrapperArgs as one string, which the wrapper hook rejects
        mov-cli-fixed = pkgs.mov-cli.overridePythonAttrs (old: {
          makeWrapperArgs = [
            "--prefix"
            "PATH"
            ":"
            (pkgs.lib.makeBinPath [
              pkgs.ffmpeg
              pkgs.fzf
              pkgs.mpv
            ])
          ];
        });

        mov-cli-youtube = pkgs.python3Packages.buildPythonPackage rec {
          pname = "mov-cli-youtube";
          version = "1.3.8";
          pyproject = true;

          src = pkgs.fetchFromGitHub {
            owner = "mov-cli";
            repo = "mov-cli-youtube";
            tag = version;
            hash = "sha256-2dc6EYy+6vCOCy+FZBVKWzeV3xFAswUaX9XfYk0jz1E=";
          };

          build-system = with pkgs.python3Packages; [
            setuptools
            setuptools-scm
          ];

          dependencies =
            with pkgs.python3Packages;
            [
              pytubefix
              yt-dlp
            ]
            ++ [ mov-cli-fixed ];

          doCheck = false;
        };

        mov-cli-with-plugins = pkgs.python3.withPackages (_: [
          mov-cli-fixed
          mov-cli-youtube
        ]);
      in
      {
        environment.systemPackages = [ mov-cli-with-plugins ];

        hjem.users.vadya.files.".config/mov-cli/config.toml".text = ''
          [mov-cli.plugins]
          youtube = "mov-cli-youtube"

          [mov-cli.scrapers]
          default = "youtube"
        '';
      };
  };
}
