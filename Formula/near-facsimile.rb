class NearFacsimile < Formula
  desc "Find similar or identical text files in a directory"
  homepage "https://github.com/msuchane/near-facsimile"
  url "https://github.com/msuchane/near-facsimile/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "9389d3d0780a6f951c68cfb178b41eefe53e4409463d10ffd0109d732f2daf12"
  license "Apache-2.0"
  head "https://github.com/msuchane/near-facsimile.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
