class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.6"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-darwin-universal.tar.gz"
    sha256 "5e5ce34829698e132cf658ec7c0a96665b32264cf39ec299cb77eb47e63a58eb"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80360e48ded2996aaead3b29d48fbaefccf670638902d85fbdda5f4ac59d0f7f"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.6/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b67ce2bb28d29c017143d05811b0118f3eba302ca2fadfc499e8c11b32a04c1"
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
