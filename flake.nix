{
  inputs = {
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let 
        pkgs = nixpkgs.legacyPackages.${system};
        nodejs = pkgs.nodejs-16_x;
      in rec {
        devShell = pkgs.mkShell {
          buildInputs = [
            nodejs
          ];
        };
      }
    );
}
