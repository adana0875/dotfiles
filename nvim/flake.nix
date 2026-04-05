{
  description = "Nvim Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, nvf, ... }: {
    packages."x86_64-linux".default = (
      nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [ ./neovim.nix ];
      }).neovim;


    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

      modules = [
          ./neovim.nix
          nvf.nixosModules.default
      ];
      };
    };
  };
}
