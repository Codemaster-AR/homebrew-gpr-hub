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
    # This creates a safe environment for your app
    venv = virtualenv_create(libexec, "python3.12")

    # This command tells Homebrew to read your setup.py and install EVERYTHING listed there
    system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath

    # This makes the 'gpr-hub' command available globally
    bin.install_symlink libexec/"bin/gpr-hub"
  end

  test do
    system "#{bin}/gpr-hub", "--version"
  end
end
