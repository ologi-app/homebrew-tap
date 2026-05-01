class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.1"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.1/ologi-0.1.1-darwin-arm64.tar.gz"
  sha256 "501839de1e599f618e78087323550535f143d8a75b2718b34b8dd2a50b2751e8"

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
