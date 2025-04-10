{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    autoconf
    automake
    libtool
    pkg-config
    autoreconfHook
    stdenv
  ];

  buildInputs = with pkgs; [
    boost
    libevent
    openssl
    zeromq
    cmake
    sqlite
    qt6.qtbase
    qt6.qtsvg
    miniupnpc
    python310
  ];

  shellHook = ''
  '';
}
