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

      {
        environment.systemPackages = [
          (pkgs.writeShellApplication {
            name = "yt";
            runtimeInputs = [
              pkgs.mpv
              pkgs.yt-dlp
              pkgs.deno
            ];
            text = ''
              exec mpv "ytdl://ytsearch:$*"
            '';
          })
        ];
      };
  };
}
