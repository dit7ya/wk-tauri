# adapted from https://gitlab.com/scvalex/sixty-two/-/blob/flake-blogpost/flake.nix
{
  inputs = {
    naersk.url = "github:nmattia/naersk/master";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    naersk,
    ...
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      naersk-lib = pkgs.callPackage naersk {};
    in {
      devShell = with pkgs;
        mkShell {
          buildInputs = [
            pkgconfig
            openssl
            sass
            glib
            cairo
            pango
            atk
            gdk-pixbuf
            libsoup
            gtk3
            dbus
            webkitgtk
            librsvg
            patchelf
          ];
        };
    });
}
