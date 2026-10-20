{
  outputs = _:
    let
      sources = import ./lon/lon.nix;
    in
    sources.flake-parts.lib.mkFlake { inputs = sources; } {
      imports = [
        sources.den.flakeModule
        (sources.import-tree [ ./hosts ./modules ])
      ];
    };
}
