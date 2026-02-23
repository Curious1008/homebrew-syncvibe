class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.1/syncvibe-darwin-universal.tar.gz"
    sha256 "280ca842eb2f8f0277e0570319286118baa71a9acab46b1f8bb97954ebbfe3ed"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17d6c8695fc9d844507de8bbfa6ecd44ffadd78a4656e3fb7fdf950e0c1c3b18"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a211d699e68a7b81d2035b0c1ff449e89cbf2775063424999f60b4999927289d"
    end
  end

  depends_on "tmux" => :recommended

  def install
    bin.install "syncvibe"
  end

  test do
    assert_match "syncvibe", shell_output("#{bin}/syncvibe --help")
  end
end
