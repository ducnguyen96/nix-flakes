{
  lib,
  pkgs,
  ...
}: {
  programs.nixvim = {
    enable = true;

    extraConfigLua = builtins.readFile ./extra-config.lua;
    extraConfigLuaPre = builtins.readFile ./extra-config-pre.lua;

    globals.mapleader = " ";

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = import ./opts.nix;
    keymaps = import ./keymaps.nix;
    autoGroups = import ./auto-groups.nix;
    autoCmd = import ./auto-cmds.nix;

    plugins = import ./plugins {inherit lib pkgs;};
    extraPlugins = with pkgs.vimPlugins; [
      lazygit-nvim
      ansible-vim
    ];

    colorschemes = import ./themes/default.nix;
  };
}
