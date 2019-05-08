class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.4.3/gitbatch_0.4.3_darwin_amd64.tar.gz"
  version "0.4.3"
  sha256 "29650ab55ec2af713f7a1d9a5953aae3f45a79fb21ece9513592241def91d77a"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitbatch/releases/download/v0.4.3/gitbatch_0.4.3_linux_amd64.tar.gz"
    sha256 "cadd377e5672281c62b304768110c1a0b36ed752e133d52ae220dedb6d56db69"
  end

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.4.2", shell_output("#{bin}/gitbatch --version", 2)
  end
end
