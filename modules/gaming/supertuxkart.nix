{
  den,
  ...
}:

{
  den.aspects.gaming.supertuxkart = {
    description = ''
      legendary game man
      especially offline
      (i mean freesm is offline but still)
    '';

    nixos =
    {
      pkgs,
      ...
    }:

    {
      environment.systemPackages = with pkgs; [
        supertuxkart
      ];
    };
  };
}
