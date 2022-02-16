{
  description = "Group website.";

  inputs = {
    root-curated.url = "github:umd-lhcb/root-curated";
    nixpkgs.follows = "root-curated/nixpkgs";
    flake-utils.follows = "root-curated/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, root-curated }:
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

            cachix
          ];
        };
      });
}
