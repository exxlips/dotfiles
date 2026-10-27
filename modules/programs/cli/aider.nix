{
  ...
}:
{
  den.aspects.programs.cli.aider = {
    homeManager =
      {
        ...
      }:
      {
        home.file.".aider.conf.yml".text = ''
          pretty: true
          dark-mode: true
          stream: true

          code-theme: monokai

          user-input-color: "#00ffcc"
          tool-output-color: "#ffb86c"
          tool-error-color: "#ff5555" 
          assistant-output-color: "#f8f8f2"
        '';
      };
  };
}
