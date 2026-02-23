class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.0/syncvibe-darwin-universal.tar.gz"
    sha256 "a3c42a560e3d1c32e37a038f59bd6bf549ad0edd05617923cfbd877a4258c2c3"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.0/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "273b2682c16bb5b81fb0b901ec020071fd9cda9255cfd1695754fb6abd6e74c2"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.0/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e705dc870fc496cd9360e0b949bd36407476af83d0c48c2d2097027afd534a97"
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
