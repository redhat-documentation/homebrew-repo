class Acorns < Formula
  desc "Generate an AsciiDoc release notes document from tracking tickets. "
  homepage "https://github.com/msuchane/acorns"
  url "https://github.com/msuchane/acorns/archive/refs/tags/v0.28.5.tar.gz"
  sha256 "e333c4d725e739cbe5aca12fb381514279148e3f31f5f951170f1ec87f3011b7"
  license "GPL-3.0-or-later"
  head "https://github.com/msuchane/acorns.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

end
