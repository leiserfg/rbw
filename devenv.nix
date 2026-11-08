{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{

  # https://devenv.sh/languages/
  languages.rust.enable = true;

  git-hooks.hooks = {
    check-added-large-files = {
      enable = true;
      args = [
        "--maxkb"
        "5120"
      ];
    };

    clippy = {
      enable = true;
      settings.denyWarnings = true;
    };

    rustfmt.enable = true;
  };
}
