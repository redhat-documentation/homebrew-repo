class NearFacsimile < Formula
  desc "Find similar or identical text files in a directory"
  homepage "https://github.com/msuchane/near-facsimile"
  url "https://github.com/msuchane/near-facsimile/archive/refs/tags/0.8.2.tar.gz"
  sha256 "d3af6d803130f9f3a875163630dc126ec8a8f89cc7b55d54978135de2f9e9a42"
  license "Apache-2.0"
  head "https://github.com/msuchane/near-facsimile.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
