class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.2/syncvibe-darwin-universal.tar.gz"
    sha256 "eea6862361aa24722bdb2b3396f214a8073d79dbcdfc55d131ab78b3137c29f6"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.2/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbe5cd93f8905b2b5bbbf1229e527294726f8287aad6898b64c83a0844fbb5dd"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.2/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0829ac922ad670132855631daebc324fdc5faae06a7f3edcc187f9183455cd12"
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
