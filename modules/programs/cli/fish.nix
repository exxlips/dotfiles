{
  den,
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
    };

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
