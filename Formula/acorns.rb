class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/redhat-documentation/homebrew-repo"
  url "https://github.com/redhat-documentation/acorns/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "7cc810b03c3eeb8ed8c7ee097e692dba42f68dc610c26d3622fb8a1ce138e5d4"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
