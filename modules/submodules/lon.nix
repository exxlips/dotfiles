let
  lock = builtins.fromJSON (builtins.readFile ./lon.lock);

  # Override with a path defined in an environment variable.
  overrideFromEnv = name: path:
    let replacement = builtins.getEnv "LON_OVERRIDE_${name}";
    in
    if replacement == "" then path
    else if builtins.substring 0 1 replacement == "/" then /. + replacement
    else /. + builtins.getEnv "PWD" + "/${replacement}";

  fetchSource = args@{ fetchType, ... }:
    if fetchType == "git" then builtins.fetchGit (
      { url = args.url; ref = args.branch; rev = args.revision; narHash = args.hash; submodules = args.submodules; }
      // (if args ? lastModified then { inherit (args) lastModified; shallow = true; } else { })
    )
    else if fetchType == "tarball" then builtins.fetchTarball { url = args.url; sha256 = args.hash; }
    else builtins.throw "Unsupported source type ${fetchType}";
in
builtins.mapAttrs (name: args: overrideFromEnv name (fetchSource args)) lock.sources
