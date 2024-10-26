let
  bufferline = import ./bufferline.nix;
  lualine = import ./lualine.nix;
  startup = import ./startup.nix;
in
  bufferline // lualine // startup
