{pkgs ? import <nixpkgs> {}}:
with pkgs; let
  pyEnv = python3.withPackages (ps: [ps.gitpython]);
in
  mkShell {
    packages = [
      bash
      pyEnv
      nix
      nix-prefetch-scripts
    ];
  }
