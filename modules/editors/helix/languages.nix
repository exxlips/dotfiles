# languages.nix..~

{
  den,
  ...
}:

# main aspect
{
  den.aspects.editors.helix.languages = {
    # type
    homeManager =
      {
        ...
      }:

      # the main file
      {
        programs.helix.languages = {
          # general
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
                # json
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
                # markdown (.md)
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

                # nix (.nix)
                {
                  name = "nix";

                  language-servers = [ "nixd" ];

                  formatter = {
                    command = "nixfmt";
                  };
                }

                # python (.py)
                {
                  name = "python";

                  language-servers = [ "pylsp" ];

                  formatter = {
                    command = "black";
                  };
                }

                # rust (.rs)
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
                # yaml (.yaml)
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

# end
