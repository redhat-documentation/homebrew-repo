class Newdoc < Formula
  desc "The newdoc tool generates files formatted with AsciiDoc, which are used in Red Hat documentation."
  homepage "https://github.com/redhat-documentation/newdoc"
  url "https://github.com/redhat-documentation/newdoc/archive/refs/tags/v2.11.0.tar.gz"
  sha256 "7b019162e93e1ec43940b0b1ca4b26fb7d984e033d1069ab65e395c8d0dca02b"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/newdoc.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
