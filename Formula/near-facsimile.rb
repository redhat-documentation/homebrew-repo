class NearFacsimile < Formula
  desc "Find similar or identical text files in a directory"
  homepage "https://github.com/msuchane/near-facsimile"
  url "https://github.com/msuchane/near-facsimile/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "5f1759cc097740f26c7cc003e6c8f08667674e748cfba3cb05ba38d5f9041382"
  license "Apache-2.0"
  head "https://github.com/msuchane/near-facsimile.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
