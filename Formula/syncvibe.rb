class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.7"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.7/syncvibe-darwin-universal.tar.gz"
    sha256 "630ae2511009ad5084316b9a1daaa37647cfbe6894813ce11e769894313668a8"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.7/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8659dbece3a9d8613265a65fed5ef457e5235f8eadf2d89ba865343ef1f53cc1"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.7/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4f8175d9cb56d8a657367d1e977cd037a15a84f645a02a40b4356308994b51f"
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
