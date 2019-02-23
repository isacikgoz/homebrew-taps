class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.4.2/gitbatch_0.4.2_darwin_amd64.tar.gz"
  version "0.4.2"
  sha256 "b76624da777c10aa43c835f31355c9ae96162e27b16b6c1d92ed4a83275b6f29"

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.4.2", shell_output("#{bin}/gitbatch --version", 2)
  end
end