{
  description = "A collection of KNative functions templates to use with MindWM";

  outputs =
    { ... }:
    {
      templates = {
        python = {
          path = ./python;
          description = "A flake template for development a knfunc with Python and MindWM";
        };
#        rust = {
#          path = ./rust;
#          description = "Rust toolchain (just a placeholder)";
#        };
      };
    };
}
