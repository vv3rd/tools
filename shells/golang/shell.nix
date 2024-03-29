{ pkgs, ... }: pkgs.mkShell
{
  name = "golang-deb-shell";

  packages = with pkgs; [
    go
    gopls
    gotools
    entr
    just
  ];

  shellHook = ''
    export GOPATH="$XDG_DATA_HOME"/go
    go version | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat
  '';
}
