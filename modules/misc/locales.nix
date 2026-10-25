{
  ...
}:
{
  den.aspects.misc.locales = {
    description = ''
      locales for whatever
      telegram also yeah
    '';

    nixos =
      {
        ...
      }:
      {
        i18n.defaultLocale = "en_US.UTF-8";

        i18n.extraLocaleSettings = {
          LC_TIME = "ru_RU.UTF-8";
          LC_PAPER = "ru_RU.UTF-8";
        };

        i18n.extraLocales = [
          "ru_RU.UTF-8/UTF-8"
        ];
      };
  };
}
