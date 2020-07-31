with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    ruby
    bundler
    bundix
  ];
}
