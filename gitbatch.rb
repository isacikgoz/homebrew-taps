class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.4.3/gitbatch_0.4.3_darwin_amd64.tar.gz"
  version "0.4.3"
  sha256 "29650ab55ec2af713f7a1d9a5953aae3f45a79fb21ece9513592241def91d77a"

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.4.2", shell_output("#{bin}/gitbatch --version", 2)
  end
end
