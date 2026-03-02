class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.2"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.2/syncvibe-darwin-universal.tar.gz"
    sha256 "2039d97896041cd25ca48146e4376260eefc0ec187a6f0487fe72c4a3d199c96"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.2/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1a042250b5d85b99a2689e774d709c81e861272624feddb7c1024cae1d3d27a"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.2/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c05b8cc2cf850f7eca65862cb3c7bce03829fdc46ff8a3a0ea67dada95ce82e"
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
