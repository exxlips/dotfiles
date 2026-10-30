{
  ...
}:

{
  den.aspects.misc.uwsm = {

    nixos =
      {
        ...
      }:
      {
        programs.uwsm = {
          enable = true;
        };
      };

    homeManager =
      {
        config,
        ...
      }:
      {
        xdg.configFile = {
          "uwsm/env".source = "${config.home.sessionVariablesPackage}/etc/profile.d/hm-session-vars.sh";
        };
      };
  };
}
