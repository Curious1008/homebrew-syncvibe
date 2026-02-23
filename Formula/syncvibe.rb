class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.2/syncvibe-darwin-universal.tar.gz"
    sha256 "a3284122868356616e9e8f2472e78bff61b939d4a0ec16c6808ff38bf530f84f"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.2/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb177eac1647b7e67e669c34b3e74597b22bf927a278b725e6197ea76109ddb4"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.2/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb10d4a4a6fc567be3f8a10ee2c627f83dd922bfec37653323d910a6074c8058"
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
