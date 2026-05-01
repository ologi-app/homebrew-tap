class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.0"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.0/ologi-0.1.0-darwin-arm64.tar.gz"
  sha256 "b9c4dd732cb88e68324ba59fdb8b48dc8a83accc4323e0d937b902fd5362921e"

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
