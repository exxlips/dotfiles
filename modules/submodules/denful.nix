{
  ...
}:

{
  den = {
    hosts = {
      torontik = {
        includes = [
          den.batteries.primary-user
          den.batteries.torontik.hardware
          den.batteries.torontik.configuration
        ];
      };
    };
  };
}
