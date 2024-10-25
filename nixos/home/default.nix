let
  homeImports = {
    "duc@nixvm" = [./profiles/duc-nixvm.nix];
  };
in {
  _module.args = {inherit homeImports;};
}
