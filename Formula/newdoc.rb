class Newdoc < Formula
  desc "The newdoc tool generates files formatted with AsciiDoc, which are used in Red Hat documentation."
  homepage "https://github.com/redhat-documentation/newdoc"
  url "https://github.com/redhat-documentation/newdoc/archive/refs/tags/v2.13.0.tar.gz"
  sha256 "46577d022bc8bdaf80f1c077a8e974d5c3dbcce3854e102575f1455b67d25363"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/newdoc.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
