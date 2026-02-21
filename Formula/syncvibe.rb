class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-darwin-universal.tar.gz"
    sha256 "5a0d09580fc21f7b1218ef8e65561bbff653ff0f74aa34a1ac5ab3f53c4934d3"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57230467551992aa4f0c89061f653d9a404945c49aca24fbe55e63bd14383a50"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b00c22acf0409b157039f274b16f7c764f881ec8b53963ae3bf360bf2ff81856"
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
