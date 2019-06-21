class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.2.1/gitin_0.2.1_darwin_amd64.tar.gz"
  version "0.2.1"
  sha256 "772a96a4aecf8e2553d91f6f42e92e63e2293490b7c6e8e398d91cc9dff5ad47"
  depends_on "libgit2"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitin/releases/download/v0.2.1/gitin_0.2.1_linux_amd64.tar.gz"
    sha256 "a11cddbcc20a91c1e29e902f3152158bd2f6d60069d220a7adac7fff5fb1be7f"
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.2.1", shell_output("#{bin}/gitin --version", 2)
  end
end