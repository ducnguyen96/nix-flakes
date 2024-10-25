{
  programs.nixvim = {
    enable = true;

    config = {
      extraConfigLuaPre = builtins.readFile ./extra-config-pre.lua;
      globals.mapleader = " ";

      clipboard = {
        providers.wl-copy.enable = true;
      };

      opts = import ./opts.nix;
      keymaps = import ./keymaps.nix;
      autoGroups = import ./auto-groups.nix;
      autoCmd = import ./auto-cmds.nix;
    };

    plugins = import ./plugins;

    colorschemes = import ./themes;
  };
}
