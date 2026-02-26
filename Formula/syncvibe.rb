class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.8"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.8/syncvibe-darwin-universal.tar.gz"
    sha256 "61501f44093575c219a214be19cacb2286791a8729acc9e1aadfd8b78b557787"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.8/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19bd43e271e8744f4dfa3e18653527300c25fa75423007318f20f00481bd7254"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.8/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b88361ccbda6e978cab3528b8ff33784bdbc2baa235195b0e3923af919e3547"
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
