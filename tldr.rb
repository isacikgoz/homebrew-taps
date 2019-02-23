class tldr < Formula
  desc "fast and interactive tldr client written with go"
  homepage "https://github.com/isacikgoz/tldr"
  url "https://github.com/isacikgoz/tldr/releases/download/v0.5.0/tldr_0.5.0_darwin_amd64.tar.gz"
  version "0.5.0"
  sha256 "809eaa40eae97db8564a4c864bc1be085f62c3ed08ec5c1bee3f43113202a636"

  def install
    bin.install "tldr"
  end

  test do
    assert_match "tldr version 0.5.0", shell_output("#{bin}/tldr --version", 2)
  end
end