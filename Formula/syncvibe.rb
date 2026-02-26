class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.9"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.9/syncvibe-darwin-universal.tar.gz"
    sha256 "bf1352669b5d31cb748c6998c8ae77e88990c56b29cf0e0b670c9282955332d3"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.9/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bddff6f096c925281ef66643aca613f5e40cbbf5b59a7e60360b87282e352b30"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.9/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a0f4db1467f6a7932c79e7ecb9471d2ec577207b0b3c95524e27c25ab4e2095"
    end
  end

  depends_on "tmux" => :recommended

  def install
    bin.install "syncvibe"
  end

  def caveats
    <<~EOS
      Get started — cd into any git project, then run:

        syncvibe

      Docs: https://github.com/Curious1008/syncvibe
    EOS
  end

  test do
    assert_match "syncvibe", shell_output("#{bin}/syncvibe --help")
  end
end
