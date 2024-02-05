class Newdoc < Formula
  desc "The newdoc tool generates files formatted with AsciiDoc, which are used in Red Hat documentation."
  homepage "https://github.com/redhat-documentation/newdoc"
  url "https://github.com/redhat-documentation/newdoc/archive/refs/tags/v2.16.0.tar.gz"
  sha256 "afbdcd815da74ff152eb786ccf54f3cf1aa35dd4177b3d97576710871f4e8737"
  license "GPL-3.0-or-later"
  head "https://github.com/redhat-documentation/newdoc.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
