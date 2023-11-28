class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/msuchane/acorns"
  url "https://github.com/msuchane/acorns/archive/refs/tags/v0.31.0.tar.gz"
  sha256 "bef7bfe5331c6c263f15821cdcc484d6f5fe2adcc76ed744a5a6a8c3c6fd5f6d"
  license "GPL-3.0-or-later"
  head "https://github.com/msuchane/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
