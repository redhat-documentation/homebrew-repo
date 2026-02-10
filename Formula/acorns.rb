class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/redhat-documentation/homebrew-repo"
  url "https://github.com/redhat-documentation/acorns/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "83b7512bca29e30a84da7f5f000624382bae683c6a5847713b4b39a2714f4962"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
