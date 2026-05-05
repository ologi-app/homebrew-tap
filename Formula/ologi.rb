class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.2"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.2/ologi-0.1.2-darwin-arm64.tar.gz"
  sha256 "66f7f074ef422d765767027f033972419b41e2e3aed525c9dbd5a175e2184233"

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
