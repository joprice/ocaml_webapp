{ pkgs, opam2nix }:

with pkgs;
let
  ocaml = ocaml-ng.ocamlPackages_4_10.ocaml;
  opam2nix = import ./opam2nix.nix { };
  args = {
    inherit ocaml;
    selection = ./opam-selection.nix;
    src = ../.;
  };
  resolve = opam2nix.resolve args [
    "ocaml_webapp.opam"
  ];
  selection = opam2nix.build args;
in
{
  inherit pkgs resolve;
  inherit (selection) ocaml_webapp;
}
