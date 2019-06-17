class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.2.0/gitin_0.2.0_darwin_amd64.tar.gz"
  version "0.2.0"
  sha256 "576361e3553fdd82569df145f807c0be0c09072250aeb900b4a2c5474752ed3b"
  depends_on "libgit2"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitin/releases/download/v0.2.0/gitin_0.2.0_linux_amd64.tar.gz"
    sha256 "65c413e3417c60f8d1d3418a1f8b59141122eb882b031633ac6d141b15ce23b5"
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.2.0", shell_output("#{bin}/gitin --version", 2)
  end
end