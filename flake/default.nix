{inputs, ...}: {
  imports = [
    ../nixos/home
    ../nixos/hosts
    ../tools/nixvim
    inputs.pre-commit-hooks.flakeModule
  ];

  systems = ["x86_64-linux"];

  perSystem.pre-commit = {
    check.enable = true;

    settings.excludes = ["flake.lock"];

    settings.hooks = {
      alejandra.enable = true;
      commitizen.enable = true;
      nil.enable = true;
    };
  };
}
