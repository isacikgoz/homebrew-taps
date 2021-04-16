class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.6.1/gitbatch_0.6.1_darwin_amd64.tar.gz"
  version "0.6.1"
  sha256 "53616f0bf98000009e76f2ae81eddf1e67c3a02d8817f680187985da98aab85d"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitbatch/releases/download/v0.6.1/gitbatch_0.6.1_linux_amd64.tar.gz"
    sha256 "af7a3938d4de9e9b4a7bb155d21e6d5d16f831d596e590c42701a19a02ae95ca"
  end

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.6.1", shell_output("#{bin}/gitbatch --version", 2)
  end
end
