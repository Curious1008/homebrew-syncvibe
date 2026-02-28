class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.0/syncvibe-darwin-universal.tar.gz"
    sha256 "00350ed6541e1366a095829c9ac45a6b1be2000d4454030a536a6d457764e5ab"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.0/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82588bea5d46fea673b60b05f52ec994c88cdb8a345aeb2ff6f9047ca5f9b3d1"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.0/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24b2a7ebb3d4857edf538d5df1bd709d4acd5cba896cef32c140472566dc097e"
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
