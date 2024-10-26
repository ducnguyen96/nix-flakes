{
  imports = [
    ../programs/starship.nix
    ../programs/zsh.nix
    ../programs/utils.nix

    ../../../tools/nixvim/home-module.nix
  ];

  home = {
    username = "duc";
    homeDirectory = "/home/duc";
    extraOutputsToInstall = ["doc" "devdoc"];
  };

  manual = {
    html.enable = false;
    json.enable = false;
    manpages.enable = false;
  };

  programs.home-manager.enable = true;
}
