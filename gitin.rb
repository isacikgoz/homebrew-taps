class Gitin < Formula
  desc "Commit, branch and working tree explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  version "0.4.0-rc.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.2/gitin_v0.4.0-rc.2_darwin_arm64.tar.gz"
      sha256 "b0622997eedcebd7a64cac6c825f72ee0a95d4bb2c25f7bbb9c72caefe9cff0e"
    end
    on_intel do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.2/gitin_v0.4.0-rc.2_darwin_amd64.tar.gz"
      sha256 "3353df885f72f6c8225c3b55dbd53aa52588c9d7c2e1d27cb62ae9535d9f8cc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.2/gitin_v0.4.0-rc.2_linux_arm64.tar.gz"
      sha256 "34dfd4bab9929110fd5041c95d7631a4001d32476616a327590844a2f27a1c85"
    end
    on_intel do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.2/gitin_v0.4.0-rc.2_linux_amd64.tar.gz"
      sha256 "1d1edc290c355b481d3c2274fea0ae7f7a6db8197e788dc07de25a539c28ad60"
    end
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version v#{version}", shell_output("#{bin}/gitin --version 2>&1")
  end
end
