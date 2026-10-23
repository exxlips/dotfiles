# audio.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.hardware.audio = {

    # type
    nixos =
      {
        ...
      }:

      {

        # pipewire config (ANTI PULSEAUDIO TEAM)
        services = {
          pulseaudio.enable = false;
          pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
          };
        };
      };
  };
}

# end
