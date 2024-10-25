{
  homeImports,
  inputs,
  self,
  ...
}: let
  inherit (inputs.nixpkgs.lib) nixosSystem;

  modules = "${self}/nixos/modules/system";

  specialArgs = {inherit inputs self;};
in {
  flake.nixosConfigurations = {
    nixvm = nixosSystem {
      inherit specialArgs;

      modules = [
        ./nixvm

        "${modules}/config"
        "${modules}/programs"
        "${modules}/security"
        "${modules}/services"

        {
          home-manager = {
            users.duc.imports = homeImports."duc@nixvm";
            extraSpecialArgs = specialArgs;
          };
        }
      ];
    };
  };
}
