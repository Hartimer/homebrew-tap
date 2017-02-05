class JsonToPattern < Formula
  desc "Applies a JSON object to a String pattern"
  homepage "https://github.com/Hartimer/json-to-pattern"
  url "https://github.com/Hartimer/json-to-pattern/archive/1.0.0.tar.gz"
  sha256 "789de4bffe0c22911a4968e525feeb20a6c7c4f4fe762a936ce2dac2213cd855"

  include Language::Python::Virtualenv

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    virtualenv_install_with_resources
  end

  test do
    system "json-to-pattern", "-h"
  end
end
