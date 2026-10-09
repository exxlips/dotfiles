# throne.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.programs.gui.throne = {
    description = ''
      great proxy client
      best i've ever used
    '';
    nixos =
    {
      ...
    }:

    {
      programs = {
        throne = {
         enable = true;
           tunMode.enable = true;
        };
      };
    };
  };
}
