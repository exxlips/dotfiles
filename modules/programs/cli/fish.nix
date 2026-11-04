{
  ...
}:

{
  den.aspects.programs.cli.fish = {

    nixos =
      {
        ...
      }:

      {
        programs.fish.enable = true;

        programs.fish.interactiveShellInit = ''
          set -g fish_greeting ""
        '';

        programs.fish.shellAliases = {
          ll = "eza --tree";
        };
      };

    homeManager =
      {
        ...
      }:

      {
        programs.fish = {
          enable = true;

          interactiveShellInit = ''
            fastfetch
          '';

          shellInitLast = ''
            set fish_cursor_default     line
            set fish_cursor_insert      line
            set fish_cursor_replace_one underscore
            set fish_cursor_replace     underscore
            set fish_cursor_visual      block
            set fish_cursor_external    line 
          '';
        };
      };
  };
}
