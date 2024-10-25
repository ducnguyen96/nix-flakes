{
  imports = [
    ./cmp.nix
    ./autopairs.nix
    ./schema-store.nix
  ];
  plugins.cmp-emoji = {enable = true;};
  plugins.cmp-nvim-lsp = {enable = true;}; # lsp
  plugins.cmp-buffer = {enable = true;};
  plugins.cmp-path = {enable = true;}; # file system paths
  plugins.cmp_luasnip = {enable = true;}; # snippets
  plugins.cmp-cmdline = {enable = false;}; # autocomplete for cmdline
  extraConfigLua = builtins.readFile ./extra-config.lua;
}
