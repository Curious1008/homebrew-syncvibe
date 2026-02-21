class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-darwin-universal.tar.gz"
    sha256 "daaaa0fb103be64cdcc5a0f91dc00aa452d503e001dd0313bcf5d738772d12f7"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "959d55eba6c99dc66188f253b71384635dc6cc25ad7f65eafecfbb202ca391d5"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.1/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96a6e74fe623e55f71cfc5e2958e39cbe412127ece43f5c22b1e7cfbda32cb52"
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
