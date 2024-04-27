{
    description = "openfortivpn-webview flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    };

    outputs = { self, nixpkgs, ...}:
    let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
    in {
        packages.${system}.default = (import ./default.nix { inherit pkgs; });
    };
}
