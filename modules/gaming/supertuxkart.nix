# supertuxkart.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.gaming.supertuxkart = {
   
    # cool desc
    description = ''
      legendary game man
      especially offline
      (i mean freesm is offline but still)
    '';

    # type
    nixos =
    {
      pkgs,
      ...
    }:

    # ... just a package.
    {
      environment.systemPackages = with pkgs; [
        supertuxkart
      ];
    };
  };
}
