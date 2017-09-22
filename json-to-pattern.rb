class JsonToPattern < Formula
  desc "Applies a JSON object to a String pattern"
  homepage "https://github.com/Hartimer/json-to-pattern"
  url "https://github.com/Hartimer/json-to-pattern/archive/1.0.1.tar.gz"
  sha256 "b5aa01ab968fdee6a9193f1f3ecc7ad9352535367bc49ea062a63510962bbc9f"

  include Language::Python::Virtualenv

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    bin.install "json-to-pattern"
  end

  test do
    system "json-to-pattern", "-h"
  end
end
