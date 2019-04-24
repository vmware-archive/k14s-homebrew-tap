class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.7.0"
  url "https://github.com/k14s/ytt/releases/download/v0.7.0/ytt-darwin-amd64"
  sha256 "aea8e18b8c634fa95007d8c2e10505cfeb17960fba3edf74ca5034010e1b2325"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
