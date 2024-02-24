{ pkgs ? import <nixpkgs> {} }:

 pkgs.mkShell {
   buildInputs = [
     pkgs.flutter
   ];
 }
pkgs.androidenv.composeAndroidPackages {
  platformVersions = [ "9" ]; # Specify the Android SDK platform version here
  includeNDK = true; # Include the NDK if needed
  # Add additional configurations if necessary
}
