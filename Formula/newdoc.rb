class Newdoc < Formula
  desc "The newdoc tool generates files formatted with AsciiDoc, which are used in Red Hat documentation."
  homepage "https://github.com/redhat-documentation/newdoc"
  url "https://github.com/redhat-documentation/newdoc/archive/refs/tags/v2.15.1.tar.gz"
  sha256 "0e79e92317c8fe5ef97c07613f12f1055f03dea60bdeccd37a7a7daa196ace62"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/newdoc.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
