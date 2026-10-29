{
  ...
}:

{
  den.aspects.hardware.audio = {
    description = ''
      pov when audio doesnt work
      (youre on arch/nix)
    '';

    nixos =
      {
        ...
      }:

      {

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
