class GprHub < Formula
  include Language::Python::Virtualenv

  desc "GPR Image Reader and AI Analyzer"
  homepage "https://github.com/Codemaster-AR/gpr-hub-cli"
  url "https://github.com/Codemaster-AR/gpr-hub-cli/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "84c7e6a87d987ed6b16ab4315e1704083a86ef06bb684e80d81d5879a032c44b"
  license "MIT"

  depends_on "python@3.12"
  depends_on "sdl2"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gpr-hub", "--version"
  end
end
