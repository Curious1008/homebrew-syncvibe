class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.3"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.3/syncvibe-darwin-universal.tar.gz"
    sha256 "a147e2206294f942a679b29479c0b2cfc0bd27b4260b9934782734be5f48b110"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.3/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "073f8fb9d53ec2bebdbd14f1cadc3b14bb76d2523fe29abb2887b644286ce33a"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.3/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5b77f83082457fc706e1a74b6264698e2f475ca5dea81b74c5ab592747a8ab5"
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
