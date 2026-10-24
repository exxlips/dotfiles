# fish.nix..~

{
  ...
}:

# main aspect
{
  den.aspects.programs.cli.fish = {

    # type (nixOs)
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
          sops-edit = "sudo -E EDITOR=hx SOPS_AGE_KEY_FILE=/var/lib/sops-nix/keys.txt sops ~/dotfiles/secrets/api-keys.yaml";
        };
      };

    # type (homeManager)
    homeManager =
      {
        ...
      }:

      {
        programs.fish = {
          interactiveShellInit = ''
            pfetch
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

# end
