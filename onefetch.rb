class Onefetch < Formula
  homepage "https://github.com/o2sh/onefetch"
  version "1.5.4"
  url "https://github.com/o2sh/onefetch/archive/v#{version}.tar.gz"
  head "https://github.com/o2sh/onefetch.git"

  def install
    system "make", "build"
    # bin path is now hard-coded in Makefile so that I install manually
    bin.install "target/release/onefetch"
  end
end
