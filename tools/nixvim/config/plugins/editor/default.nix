{pkgs, ...}: let
  illuminate = import ./illuminate.nix;
  indent-blankline = import ./indent-blankline.nix;
  navic = import ./navic.nix;
  neo-tree = import ./neo-tree.nix;
  todo-comments = import ./todo-comments.nix;
  treesitter = import ./treesitter.nix {inherit pkgs;};
  undotree = import ./undotree.nix;
in
  illuminate // indent-blankline // navic // neo-tree // todo-comments // treesitter // undotree
