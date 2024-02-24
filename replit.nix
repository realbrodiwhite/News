{ pkgs }: deps [
  pkgs.flutter
  pkgs.dart
]

in
pkgs.mkShell {
  buildInputs = [ flutter dart ];
  shellHook = ''
    export PATH=${flutter}/bin:${dart}/bin:$PATH
  '';
}