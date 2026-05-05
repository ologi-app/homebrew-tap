class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.3"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.3/ologi-0.1.3-darwin-arm64.tar.gz"
  sha256 "ce0724f772c1721df9b521242ada27d0102072aa5b9ff0024c96ea9d49383ace"

  depends_on "portaudio"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "ologi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ologi --version")
  end
end
