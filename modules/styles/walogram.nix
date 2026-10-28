{
  den,
  ...
}:

{
  zen.styles.walogram = {
    includes = [
      den.aspects.custom.walogram
    ];

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
