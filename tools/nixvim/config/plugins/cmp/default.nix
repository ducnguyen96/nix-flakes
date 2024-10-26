let
  autopairs = import ./autopairs.nix;
  cmp-copilot = import ./cmp-copilot.nix;
  cmp = import ./cmp.nix;
  lspkind = import ./lspkind.nix;
  schema-store = import ./autopairs.nix;
in
  autopairs
  // cmp-copilot
  // cmp
  // lspkind
  // schema-store
  // {
    cmp-emoji = {enable = true;};
    cmp-nvim-lsp = {enable = true;}; # lsp
    cmp-buffer = {enable = true;};
    cmp-path = {enable = true;}; # file system paths
    cmp_luasnip = {enable = true;}; # snippets
    cmp-cmdline = {enable = false;}; # autocomplete for cmdline
  }
