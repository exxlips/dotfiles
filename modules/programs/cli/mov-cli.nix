{
  pkgs,
  ...
}:

let
  mov-cli-youtube = pkgs.python3Packages.buildPythonPackage rec {
    pname = "mov-cli-youtube";
    version = "1.3.11";

    src = pkgs.fetchFromGitHub {
      owner = "mov-cli";
      repo = "mov-cli-youtube";
      rev = "v${version}";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };

    propagatedBuildInputs = with pkgs.python3Packages; [
      pytube
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
  den.aspects.programs.cli.mov-cli = {
    nixos =
      {
        pkgs,
        ...
      }:

      {

        environment.systemPackages = with pkgs; [
          mov-cli-with-plugins
        ];

        hjem.users.vadya.files."mov-cli/config.toml".text = ''
          version = 1
          player = "mpv"

          [mov-cli.plugins]
          youtube = "mov-cli-youtube"

          [mov-cli.scrapers]
          default = "youtube"
        '';
      };
  };
}
