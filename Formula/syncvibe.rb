class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.5"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.5/syncvibe-darwin-universal.tar.gz"
    sha256 "2ea4e8269439a9a7949cae3875e7ddd9860154cf7bee8265be0c65710e08bfd0"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.5/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fc12486fb304b12dae842816563f85cfb74041927ca8da0ebeba72dd3102d0d"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.5/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89782ffc9fec196d752fc4de0418b6a399fa2eccf5fd28caebced476352b3beb"
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
