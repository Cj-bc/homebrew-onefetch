class Onefetch < Formula
  desc "Git summary on your terminal"
  homepage "https://github.com/o2sh/onefetch"
  url "https://github.com/o2sh/onefetch/archive/v1.5.4.tar.gz"
  head "https://github.com/o2sh/onefetch.git"

  depends_on "rust"

  def install
    # bin path is now hard-coded in Makefile so that I install manually
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
