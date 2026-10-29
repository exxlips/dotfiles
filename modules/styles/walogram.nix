{
  ...
}:

{
  den.aspects.styles.walogram = {
    homeManager =
      {
        config,
        self',
        ...
      }:
      {
        home.packages = [
          (self'.packages.walogram.override {
            colors = config.lib.stylix.colors.withHashtag;
          })
        ];
      };
  };
}
