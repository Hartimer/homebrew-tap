class JsonToPattern < Formula
  desc "Applies a JSON object to a String pattern"
  homepage "https://github.com/Hartimer/json-to-pattern"
  url "https://github.com/Hartimer/json-to-pattern/archive/1.0.0.tar.gz"
  sha256 "674d6ffbb3e57e2c0c47c3712d9034247ef3710d82fc66c4e9f0d012cba6108b"

  include Language::Python::Virtualenv

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    virtualenv_install_with_resources
  end

  test do
    system "json-to-pattern", "-h"
  end
end
