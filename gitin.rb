class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.2.5/gitin_v0.2.5_darwin_amd64.tar.gz"
  version "0.2.5"
  sha256 "fa22f8df894a81393b19f6369432c39bac65cace88d2d9dd252a96ba35d08391"
  depends_on "libgit2"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitin/releases/download/v0.2.5/gitin_v0.2.5_linux_amd64.tar.gz"
    sha256 "e768667eee5e51d8a30e53b45d4fa56f87109251b7afed15da326c91200ca417"
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.2.1", shell_output("#{bin}/gitin --version", 2)
  end
end