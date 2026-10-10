# fish.nix..~

{
  den,
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
    };

    # type (homeManager)
    homeManager =
    {
      ...
    }:

    {
      programs.fish.interactiveShellInit = ''
        pfetch
      '';
    };
  };
}

# end
