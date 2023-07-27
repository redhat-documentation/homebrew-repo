class NearFacsimile < Formula
  desc "Find similar or identical text files in a directory"
  homepage "https://github.com/msuchane/near-facsimile"
  url "https://github.com/msuchane/near-facsimile/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "2ea90c8a35c808d5414f2dcad1eb70218fc89af14bcd52bacce05e76b95b994d"
  license "Apache-2.0"
  head "https://github.com/msuchane/near-facsimile.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

end
