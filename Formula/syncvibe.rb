class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.5"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.5/syncvibe-darwin-universal.tar.gz"
    sha256 "b68801c94a3213573a0a50f6f9f80ab572fa8019f1745b27d9bd1c99e1b0b57b"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.5/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebec72e4619b07251d59403b5278ecd6c7aa174e28cf79514ea56e133d24d1d0"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.5/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f55006f93c7ca23fedb15533df2413b0a5a04ddeb746265e48b20ddf2682a66c"
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
