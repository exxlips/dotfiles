{
  den,
  ...
}:

{
  den.aspects.editors.helix.languages = {
    homeManager =
      {
        ...
      }:
      {
        programs.helix.languages = {
          language =
            map
              (
                params:
                {
                  auto-format = true;
                  indent = {
                    tab-width = 2;
                    unit = "  ";
                  };
                }
                // params
              )
              [
                {
                  name = "json";

                  language-servers = [ "vscode-json-language-server" ];

                  formatter = {
                    command = "prettier";
                    args = [
                      "--use-tabs"
                      "--parser"
                      "json"
                    ];
                  };
                }
                {
                  name = "markdown";

                  language-servers = [ "marksman" ];

                  formatter = {
                    command = "prettier";
                    args = [
                      "--use-tabs"
                      "--parser"
                      "markdown"
                    ];
                  };
                }
                {
                  name = "nix";

                  language-servers = [ "nixd" ];

                  formatter = {
                    command = "nixfmt";
                  };
                }
                {
                  name = "python";

                  language-servers = [ "pylsp" ];

                  formatter = {
                    command = "black";
                  };
                }
                {
                  name = "rust";

                  language-servers = [
                    "rust-analyzer"
                  ];

                  formatter = {
                    command = "rustfmt";
                    args = [
                      "--edition"
                      "2024"
                    ];
                  };
                }
                {
                  name = "yaml";

                  language-servers = [ "yaml-language-server" ];

                  formatter = {
                    command = "prettier";
                    args = [
                      "--use-tabs"
                      "--parser"
                      "yaml"
                    ];
                  };
                }
              ];
        };
      };
  };
}
