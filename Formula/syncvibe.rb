class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.5.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.1/syncvibe-darwin-universal.tar.gz"
    sha256 "f79675e34041017f8146afc8b9ed6519bb240b17ce6cc02c1218cb4d638fe6ce"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c33e31a0c1094f3851129589f9ec92da6dee426b16c5d59154171bfec14d7035"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.5.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b56061ad57b14dd7281aa1a5d9726a872f98d077ada51e6db66375ad50eeba05"
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
