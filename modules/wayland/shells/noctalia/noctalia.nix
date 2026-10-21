# noctalia.nix..~

{
  den,
  inputs,
  ...
}:


# NOT importable file (since it's literally perSystem)
{
  perSystem =
  {
    pkgs,
    ...
  }:

  {
    packages.noctalia = inputs'.noctalia.packages.default;
    
#   packages.noctalia = inputs.wrapper-modules.wrappers.noctalia-shell.wrap {
#     inherit pkgs;
#     settings =
       # make this file read the main noctalia file
#       (builtins.fromJSON
#         (builtins.readFile ./noctalia.json)).settings;
#   };
  };
}
