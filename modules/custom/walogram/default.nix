{
  ...
}:

{
  perSystem =
    {
      pkgs,
      ...
    }:

    {
      packages.walogram = pkgs.callPackage ./_package.nix { };
    };
}
