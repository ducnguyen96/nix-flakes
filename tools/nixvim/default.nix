let
  nixvimConfig = import ./config;
in {
  flake.nixvimConfig = nixvimConfig;
}
