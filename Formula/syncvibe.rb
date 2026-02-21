class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-darwin-universal.tar.gz"
    sha256 "b299d0d23496dc0b4a01c93c82495185eb023247541b7718620fe1db941a5953"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de930863f582b1e7a039979bd1d6a6e2ab20cab26fcc3d6b3b5ae936f539b852"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6086c833cc14b6fc1cb06f2580fdfe4c0b36617c0b26030654b885ebe38eca8"
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
