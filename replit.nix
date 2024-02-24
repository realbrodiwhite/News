{ pkgs }: 
let
  flutter = pkgs.flutter.override {
    version = "3.0.5"; # Choose a version compatible with your flutter SDK constraints
    dart-sdk-version = "2.17.6"; # Ensure this Dart SDK version is compatible with your Flutter version
  };
in
pkgs.mkShell {
  buildInputs = [ flutter ];
  shellHook = ''
    export PATH=${flutter}/bin:$PATH
  '';
}
