let
  default = (import ./default.nix { });
  pkgs = default.pkgs;
in
{
  inherit (default) ocaml_webapp;
}
