let
  cmp = import ./cmp.nix;
  autopairs = import ./autopairs.nix;
  schema-store = import ./autopairs.nix;
in
  cmp
  // autopairs
  // schema-store
  // {
    cmp-emoji = {enable = true;};
    cmp-nvim-lsp = {enable = true;}; # lsp
    cmp-buffer = {enable = true;};
    cmp-path = {enable = true;}; # file system paths
    cmp_luasnip = {enable = true;}; # snippets
    cmp-cmdline = {enable = false;}; # autocomplete for cmdline
  }
