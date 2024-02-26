class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/msuchane/acorns"
  url "https://github.com/msuchane/acorns/archive/refs/tags/v0.31.1.tar.gz"
  sha256 "63dfa331dce78f8c99fb769666a5fe2ccaaba1962da5a022a856789dfee74931"
  license "GPL-3.0-or-later"
  head "https://github.com/msuchane/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
