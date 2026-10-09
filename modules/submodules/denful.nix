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

  den.hosts.x86_64-linux.torontik = {
    users.vadya = {
      userName = "vadya";
    };

    includes = [
      den.aspects.torontik.hardware
      den.aspects.torontik.configuration
    ];
  };

  den.default = {
    includes = [
      den.batteries.hostname
      den.batteries.primary-user
    ];
  };
}
