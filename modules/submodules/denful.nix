# denful.nix..~

{
  inputs,
  den,
  ...
}:

# denful configuration
{
  _module.args = {
    __findFile = den.lib.__findFile;
  };

  imports = [
    inputs.den.flakeModules.default
    inputs.flake-file.flakeModules.default
    inputs.flake-parts.flakeModules.bundlers
    inputs.flake-parts.flakeModules.modules
  ];


  # for safety (its imported in configuration.nix anyway)
  den = {
    default = {
      includes = [
        den.batteries.hostname
        den.batteries.primary-user
      ];
    };
  };
}

# end
