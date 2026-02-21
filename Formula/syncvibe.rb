class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-darwin-universal.tar.gz"
    sha256 "cdd3828beab719d0223ca505d578acb0e1dac0f50a0d5bd7ab512bd6d4a7f7c3"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "867e39d74a51e28d534b6fb0687b54f9c8c3f20c07973660c17bb424eac5f7c4"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e67ff2786fb5e0e08042d3079af0a20a63b620feb79d9e7a27cdaaa3b368c86b"
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
