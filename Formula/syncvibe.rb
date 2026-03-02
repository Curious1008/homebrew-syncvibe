class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.1/syncvibe-darwin-universal.tar.gz"
    sha256 "41f3b04b8bcfd1233f32f779044ab1fb9f448c6e756e1685084b0403d1354056"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "734f7d8cf57293156dd85eaa28d99e776709950d0dbeb1dd0adbd3596c7677c8"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2131056c654bb821b8cd576cfe80a8471dee36e30990cb23e57f4eeda152ae09"
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
