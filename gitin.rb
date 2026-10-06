class Gitin < Formula
  desc "Commit, branch and working tree explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  version "0.4.0-rc.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.1/gitin_v0.4.0-rc.1_darwin_arm64.tar.gz"
      sha256 "a0f148030aa6f7ed238bd4e7811449657a95eba91dfff58236b6cdca31571f9a"
    end
    on_intel do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.1/gitin_v0.4.0-rc.1_darwin_amd64.tar.gz"
      sha256 "ddbb3dcdc481808b6760781481585c1e2f35d6d6a0d46ea2a70a3b707d7993aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.1/gitin_v0.4.0-rc.1_linux_arm64.tar.gz"
      sha256 "fd2a36fd295a2ef383f76ab5f38e4f377c7de3afd013b66707669920e471f0f7"
    end
    on_intel do
      url "https://github.com/isacikgoz/gitin/releases/download/v0.4.0-rc.1/gitin_v0.4.0-rc.1_linux_amd64.tar.gz"
      sha256 "ec77cdc2b27eff0da76a3d231c534abc3e403ab7c858a030bba9eaa363ee9615"
    end
  end

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version v#{version}", shell_output("#{bin}/gitin --version 2>&1")
  end
end
