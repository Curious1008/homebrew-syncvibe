class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.0/syncvibe-darwin-universal.tar.gz"
    sha256 "4f35cd6170f80d2069c8a0fd38686d09be05ae7f3c5d8a643d674a466761f589"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.0/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe78bc309dd6613b872dca4d643e27daa96cfd62dd122bf99df069158568e1d0"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.2.0/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a243efde6bdb39e9fb3e6e9c3b7f81571b615450ddfd3e124d9090d1cfc81461"
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
