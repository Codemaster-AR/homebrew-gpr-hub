class GprHub < Formula
    2   include Language::Python::Virtualenv
    3
    4   desc "GPR Image Reader and AI Analyzer"
    5   homepage "https://github.com/Codemaster-AR/gpr-hub-cli"
    6   url "https://github.com/Codemaster-AR/gpr-hub-cli/archive/refs/tags/v4.0.0.tar.gz"
    7   sha256 "PASTE_THE_HASH_HERE"
    8   license "MIT"
    9
   10   depends_on "python@3.12"
   11   depends_on "sdl2"
   12
   13   def install
   14     virtualenv_install_with_resources
   15   end
   16
   17   test do
   18     # Simple test to verify installation
   19     system "#{bin}/gpr-hub", "--version"
   20   end
   21 end
