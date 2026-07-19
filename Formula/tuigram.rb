class Tuigram < Formula
  desc "Terminal UI (Ratatui) Telegram client written in Rust"
  homepage "https://github.com/queq-co/tuigram"
  url "https://github.com/queq-co/tuigram/releases/download/v2026.7.4/tuigram-2026.7.4-macos-arm64.tar.gz"
  version "2026.7.4"
  sha256 "b5cbbbdb03ebc62f16752166e01e1b4c154fb975c5ae2a10f45f53fabb6effc9"
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
