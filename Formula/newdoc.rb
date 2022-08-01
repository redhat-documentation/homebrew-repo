class Newdoc < Formula
  desc "The newdoc tool generates files formatted with AsciiDoc, which are used in Red Hat documentation."
  homepage "https://github.com/redhat-documentation/newdoc"
  url "https://github.com/redhat-documentation/newdoc/archive/refs/tags/v2.10.5.tar.gz"
  sha256 "bb1d0b664c370a91ea885f8c2055bb22adc98ce15ff1123e5e859863f1502682"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/newdoc.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
