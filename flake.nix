{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell (
        let
          nodejs = pkgs.nodejs_20;
        in
        {
          packages = with pkgs; [
            nodejs
            tailwindcss
            nodejs.pkgs.prettier
            nodejs.pkgs.http-server
            pandoc
          ];
        }
      );
    };
}
