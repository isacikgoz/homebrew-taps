class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.6.1/gitbatch_0.6.1_darwin_amd64.tar.gz"
  version "0.6.1"
  sha256 "15669722171ffbed641db6e54f22f3fdd1e62259990a6532f4e069dfe99752ec"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitbatch/releases/download/v0.6.1/gitbatch_0.6.1_linux_amd64.tar.gz"
    sha256 "0f627110b57f1541e2fb8130ae5017b202e78673bda3e12e9f743f74e5e31228"
  end

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.6.1", shell_output("#{bin}/gitbatch --version", 2)
  end
end
