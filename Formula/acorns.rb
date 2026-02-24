class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/redhat-documentation/homebrew-repo"
  url "https://github.com/redhat-documentation/acorns/archive/refs/tags/v1.2.3.tar.gz"
  sha256 "7a9c1af2b7c726fbdc2728389d9fae7803bcbb99bee80236bbffae8d46c890a1"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
