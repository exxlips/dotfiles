{
  inputs,
  ...
}:

{
  den = {
    hosts = {
      x86_64-linux = {
        torontik = {
          includes = with inputs; [
            den.batteries.primary-user
            den.batteries.torontik.hardware
            den.batteries.torontik.configuration
          ];
        };
      };
    };
  };
}
