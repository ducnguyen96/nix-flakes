{
  lib,
  pkgs,
  ...
}: let
  cmp = import ./cmp/default.nix;
  editor = import ./editor/default.nix {inherit pkgs;};
  git = import ./git/default.nix;
  lsp = import ./lsp/default.nix {inherit lib pkgs;};
  snippets = import ./snippets/default.nix;
  ui = import ./ui/default.nix;
  utils = import ./utils/default.nix;
in
  cmp // editor // git // lsp // snippets // ui // utils
