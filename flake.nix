{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    impermanence.url = "github:nix-community/impermanence";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-gaming.url = "github:fufexan/nix-gaming";
    nixos-cosmic = {
      url = "github:lilyinstarlight/nixos-cosmic";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, disko, impermanence, home-manager, nixos-cosmic, nix-gaming, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in  
  {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixdesk = nixpkgs.lib.nixosSystem {
      inherit system pkgs;
      specialArgs = {inherit inputs;};
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        disko.nixosModules.disko
        impermanence.nixosModules.impermanence
        nix-gaming.nixosModules.pipewireLowLatency
        nix-gaming.nixosModules.platformOptimizations
        nixos-cosmic.nixosModules.default
        ./configuration.nix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {inherit inputs;};
          home-manager.users.max = {
            imports = [
              impermanence.nixosModules.home-manager.impermanence
              ./home
            ];
          };
        }
      ];
    };
  };
}
