class Tuigram < Formula
  desc "Terminal UI (Ratatui) Telegram client written in Rust"
  homepage "https://github.com/queq-co/tuigram"
  url "https://github.com/queq-co/tuigram/releases/download/v2026.7.2/tuigram-2026.7.2-macos-arm64.tar.gz"
  version "2026.7.2"
  sha256 "8ceed8f11363a7a6b8f7a32e0c8924f3f5bb235fee6d07b1f0fc5387b295a4b0"
  license "MIT"

  depends_on arch: :arm64

  def install
    libexec.install "tuigram"
    libexec.install "lib" if File.directory?("lib")
    bin.install_symlink libexec/"tuigram"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuigram --version")
  end
end
