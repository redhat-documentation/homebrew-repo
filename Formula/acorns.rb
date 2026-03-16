class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/redhat-documentation/homebrew-repo"
  url "https://github.com/redhat-documentation/acorns/archive/refs/tags/v1.2.4.tar.gz"
  sha256 "f3969153c5985522b8e825fbc087a64a403eb5bba1e2d155c15d25f43966104c"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
