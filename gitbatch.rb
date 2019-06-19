class Gitbatch < Formula
  desc "manage your git repositories in one place"
  homepage "https://github.com/isacikgoz/gitbatch"
  url "https://github.com/isacikgoz/gitbatch/releases/download/v0.5.0/gitbatch_0.5.0_darwin_amd64.tar.gz"
  version "0.5.0"
  sha256 "adc2bf76ea03af61aeb80cf4ba314c06b67327d1e76a9e501727ae7e763e1f3a"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/gitbatch/releases/download/v0.5.0/gitbatch_0.5.0_linux_amd64.tar.gz"
    sha256 "cadd377e5672281c62b304768110c1a0b36ed752e133d52ae220dedb6d56db69"
  end

  def install
    bin.install "gitbatch"
  end

  test do
    assert_match "gitbatch version 0.5.0", shell_output("#{bin}/gitbatch --version", 2)
  end
end
