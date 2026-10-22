# battery.nix..~

{
  den,
  ...
}:


# main aspect
{
  den.aspects.system.battery = {

    # type
    nixos =
    {
      ...
    }:

    {
      # tlp top tier
      services = {

        # ppd protest
        power-profiles-daemon.enable = false;

        # my beloved
        tlp = {
          enable = true;
          settings = {
            CPU_SCALING_GOVERNOR_ON_AC = "balance_performance";
            CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

            CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
            CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance";

            CPU_BOOST_ON_AC = 1;
            CPU_BOOST_ON_BAT = 0;

            CPU_MIN_PERF_ON_AC = 0;
            CPU_MAX_PERF_ON_AC = 100;
            CPU_MIN_PERF_ON_BAT = 0;
            CPU_MAX_PERF_ON_BAT = 25;

          };
        };
      };
    };
  };
}
