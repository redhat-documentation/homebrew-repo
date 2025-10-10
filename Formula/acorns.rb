class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/redhat-documentation/homebrew-repo"
  url "https://github.com/redhat-documentation/acorns/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "dc57fc694f7318cfe8977e40223e911b8c9206fe0f7a0725126307991851f88b"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
