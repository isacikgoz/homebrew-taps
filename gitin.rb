class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.5/gitin_0.1.5_darwin_amd64.tar.gz"
  version "0.1.5"
  sha256 "111cf7e178fcfe8dc6fdee0766458b0c8c4de345eb87aa9b6ca982fdfc5ac798"
  depends_on "libgit2"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitin/releases/download/v0.1.5/gitin_0.1.5_linux_amd64.tar.gz"
    sha256 "3b29e931972d4a104d41ccc49e74e62eb38f4c50c78cc8f660a702626ca372bc"
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.5", shell_output("#{bin}/gitin --version", 2)
  end
end