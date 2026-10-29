{
  den,
  ...
}:

{
  den.aspects.styles.walogram = {
    homeManager =
      {
        self',
        ...
      }:
      {
        stylix.targets = {
          walogram = {
            package = self'.packages.walogram;
          };
        };
      };
  };
}
