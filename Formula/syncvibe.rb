class Syncvibe < Formula
  desc "Terminal-native collaboration for vibe coding teams"
  homepage "https://syncvibe.online"
  version "0.3.4"
  license "MIT"

  on_macos do
    url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.4/syncvibe-darwin-universal.tar.gz"
    sha256 "3a9069713c84dc4521b6a45fe27691b4cab13d12c49eabec2fa66d19523e8769"
  end

  on_linux do
    on_intel do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.4/syncvibe-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c232c245a371fc28b613547417fff6df808aba691ea392354c406f194607ec98"
    end

    on_arm do
      url "https://github.com/Curious1008/syncvibe/releases/download/v0.3.4/syncvibe-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d0ea8212ada9e2bce3331dc2e08f47d26ac3c29ec327705a7c70690d24c3038"
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
