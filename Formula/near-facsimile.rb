class NearFacsimile < Formula
  desc "Find similar or identical text files in a directory"
  homepage "https://github.com/msuchane/near-facsimile"
  url "https://github.com/msuchane/near-facsimile/archive/refs/tags/0.8.0.tar.gz"
  sha256 "6e170e24dc1332813607503965f763bc4dca3b0148aa57cfb05e0e40af4fb680"
  license "Apache-2.0"
  head "https://github.com/msuchane/near-facsimile.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
