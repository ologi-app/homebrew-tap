class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.4"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.4/ologi-0.1.4-darwin-arm64.tar.gz"
  sha256 "c4e19b7ba36fd25ff01680293d225ba0a95be3815bef12f8725bc075b57ab35e"

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
