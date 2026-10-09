{
  den,
  ...
}:

{
  den.aspects.programs.gui.throne = {
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
