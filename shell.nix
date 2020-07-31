with import <nixpkgs> {};

let
  gems = bundlerEnv {
    name = "jekyll-packages";
    inherit ruby;
    gemdir = ./.;
  };
in

stdenv.mkDerivation {
  name = "umd-lhcb-group-website";
  buildInputs = [
    bundler
    bundix
    gems
    gems.wrappedRuby
  ];
}
