{
  lib,
  pkgs,
  ...
}: let
  conform = import ./conform.nix {inherit lib pkgs;};
  fidget = import ./fidget.nix;
  lsp = import ./lsp.nix {inherit pkgs;};
in
  conform // fidget // lsp
