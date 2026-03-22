class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.4"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.4/syncvibe-darwin-universal.tar.gz"
    sha256 "d0bbd6ee92f2d212a0e74e51a9e98505f216d20e5fc894de0dae1983526e92ef"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.4/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "721a49353a8a7ae63d68318106b0309460f527fe24c498cc36e6939a072db3e7"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.4/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c03af0b1ff3d4f12cccf94c8f3a3db8a918134845ddc457c901ed2089555d2b"
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
