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
        mov-cli-youtube = pkgs.python3Packages.buildPythonPackage rec {
          pname = "mov-cli-youtube";
          version = "1.3.8";
          pyproject = true;
          build-system = with pkgs.python3Packages; [ setuptools ];

          src = pkgs.fetchFromGitHub {
            owner = "mov-cli";
            repo = "mov-cli-youtube";
            rev = "v${version}";
            hash = pkgs.lib.fakeHash;
          };

          dependencies = with pkgs.python3Packages; [
            pytubefix
            yt-dlp
          ];

          doCheck = false;
        };

        mov-cli-with-plugins = pkgs.mov-cli.override {
          pythonPackages = pkgs.python3Packages // {
            inherit mov-cli-youtube;
          };
        };
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
