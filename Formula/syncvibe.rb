class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.6"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-darwin-universal.tar.gz"
    sha256 "1b1cfc13063737ea1468ada38786e9192bb6f1bd8d8ed8073cc5a93f8cb05642"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04fd8f1496494ddf149848518cfb80accdcdc492354be12b0d27686e99be7af3"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1af249ab78b296fbb8c87090423fc1b645ce53fd3e04a84bde6e15234939bc9d"
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
