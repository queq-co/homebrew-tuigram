class Tuigram < Formula
  desc "Terminal UI (Ratatui) Telegram client written in Rust"
  homepage "https://github.com/queq-co/tuigram"
  url "https://github.com/queq-co/tuigram/releases/download/v2026.7.5/tuigram-2026.7.5-macos-arm64.tar.gz"
  version "2026.7.5"
  sha256 "2e7a749a505041cc2fbfb999ffa0737545992e9581a6a3cec6dfcb68ac62c745"
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
