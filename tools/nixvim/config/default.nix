{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  programs.nixvim = {
    enable = true;

    # ui
    plugins.lualine = import ./plugins/ui/lualine.nix;

    # theme
    colorschemes.catppuccin = import ./themes/catppuccin.nix;
  };
}
