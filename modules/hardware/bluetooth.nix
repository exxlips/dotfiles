{
  ...
}:

{
  den.aspects.hardware.bluetooth = {
    nixos =
      {
        ...
      }:
      {
        hardware = {
          bluetooth = {
            enable = true;

            powerOnBoot = true;

            settings = {
              General = {
                Experimental = true;
                Enable = "Source,Sink,Media,Socket";
                Privacy = "device";
                FastConnectionable = true;
              };
            };
          };
        };
      };
  };
}
