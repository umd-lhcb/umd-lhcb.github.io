{
  description = "Group website.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.09";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        gems = pkgs.bundlerEnv {
          name = "jekyll-packages";
          inherit (pkgs) ruby;
          gemdir = ./.;
        };
      in
      {
        devShell = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
          name = "umd-lhcb-group-website";
          buildInputs = with pkgs; [
            bundler
            bundix
            gems
            gems.wrappedRuby
          ];
        };
      });
}
