class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.0"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.0/ologi-0.1.0-darwin-arm64.tar.gz"
  sha256 "64b7c826ae1297aa6aab96935130eedb94ed4e31c237e3ba103ff88967964459"

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
