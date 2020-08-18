{ pkgs ?
  import
    (fetchTarball {
      # 08-15-2020
      url = "https://github.com/NixOS/nixpkgs/archive/c339c1c488c7dfa864123b43a88a192b55bce50e.tar.gz";
    }) { }
, opam2nix ? import ./opam2nix.nix
}:

pkgs.callPackage ./nix { inherit opam2nix; }
