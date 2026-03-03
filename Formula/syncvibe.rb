class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.3"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.3/syncvibe-darwin-universal.tar.gz"
    sha256 "de3da532fce8ae57d114c8e14be2a9afce8b1c21b40a18b51a80bf1c30f923e2"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.3/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73e22cffab79b7f29fe76ac704fe3498e84a3c87aa4ad7452afd2d48116128ee"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.3/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de0935cbdd509031bccdd76d0aefaa61e014d492cc0bb446c200aca2adcba3c"
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
