class Ologi < Formula
  desc "Talk your way through your AI conversations"
  homepage "https://voice.ologi.app"
  version "0.1.5"
  url "https://github.com/ologi-app/ologi/releases/download/v0.1.5/ologi-0.1.5-darwin-arm64.tar.gz"
  sha256 "01d4545d9ab1119961f661d0408f4df99af14fc42e4cb70b5f13a436e7720635"

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
