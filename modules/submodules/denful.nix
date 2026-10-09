{
  inputs,
  den,
  ...
}:

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

  den = {
    default = {
      includes = [
        den.batteries.hostname
        den.batteries.primary-user
      ];
    };
  };
}
