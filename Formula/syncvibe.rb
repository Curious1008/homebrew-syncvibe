class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.4.6"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.6/syncvibe-darwin-universal.tar.gz"
    sha256 "d565e7e1415f6697ed48a43283b862c81d2c37565a6adfa0f75a5b5d9cba2198"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.6/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d708aad7dd49962557017bac4889a5b932a7f36c4b949f1f3d19f7bff082a1a"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.4.6/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "419aa47683a50dfd7d6f93313a97867b98aabfb06958a1f164b3fed1e65f30ab"
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
