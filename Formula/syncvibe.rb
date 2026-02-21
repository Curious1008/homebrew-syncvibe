class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-darwin-universal.tar.gz"
    sha256 "74e762398dd496668282188eef09215f3009587ec2d531d606d1edab4590adc4"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dfc3100d05e5c1067b86899ceabf16fea34ae1b3bb880954127bf3ce1ec4466"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a112b314c2f01ee20e7594f0164d29d79f48c43e87fa068c8caa3e136cdaa40b"
    end
  end

  depends_on "tmux" => :recommended

  def install
    bin.install "syncvibe"
  end

  test do
    assert_match "syncvibe", shell_output("#{bin}/syncvibe --help")
  end
end
