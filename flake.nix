{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        lib = pkgs.lib;
      in {
        formatter = pkgs.alejandra;
        packages = {
          vim-codeium = import ./vim/codeium.nix {inherit pkgs;};
          vim-perforce = import ./vim/perforce.nix {inherit pkgs;};
          vscode-pylance = import ./vscode-extensions/pylance.nix {
            inherit pkgs;
            inherit lib;
          };
        };
      }
    );
}
