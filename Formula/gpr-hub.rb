class GprHub < Formula
  include Language::Python::Virtualenv

  desc "GPR Image Reader and AI Analyzer"
  homepage "https://github.com/Codemaster-AR/gpr-hub-cli"
  url "https://github.com/Codemaster-AR/gpr-hub-cli/archive/refs/tags/v5.0.0.tar.gz"
  sha256 "e081ac47dc5855f16ef248ff40890d1de24105618c0d4a4c93c354b3bb7362bc"
  license "MIT"

  depends_on "python@3.12"
  depends_on "sdl2"

  def install
    # 1. Create the virtualenv
    venv = virtualenv_create(libexec, "python3.12")

    # 2. Manually install pip inside the venv just in case it's missing
    system libexec/"bin/python", "-m", "ensurepip", "--upgrade"

    # 3. Use the venv's python to run pip and install your package
    # This ensures all dependencies in setup.py are handled
    system libexec/"bin/python", "-m", "pip", "install", "-v", "--ignore-installed", buildpath

    # 4. Link the executable
    bin.install_symlink libexec/"bin/gpr-hub"
  end

  test do
    system "#{bin}/gpr-hub", "--version"
  end
end
