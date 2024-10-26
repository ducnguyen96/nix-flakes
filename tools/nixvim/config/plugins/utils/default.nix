let
  markdown-preview = import ./markdown-preview.nix;
  mini = import ./mini.nix;
  obsidian = import ./obsidian.nix;
  telescope = import ./telescope.nix;
  toggleterm = import ./toggleterm.nix;
  web-devicons = import ./web-devicons.nix;
  whichkey = import ./whichkey.nix;
in
  markdown-preview // mini // obsidian // telescope // toggleterm // web-devicons // whichkey
