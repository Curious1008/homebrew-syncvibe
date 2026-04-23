class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.0/syncvibe-darwin-universal.tar.gz"
    sha256 "4f766d42ceb6c6a1b51e29fc5e248103e5f777ac62313c0a033b318afea9202a"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.0/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4ebabf36438f1aeafd81ce8d04f6a482f676ffec3e44459fea41b16f56bec2c"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.0/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eac9ed0437bf9163102f9c34c1f23a3e51d4acfa9110b84e1179d5a104edba2d"
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
