class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.19.0"
  url "https://github.com/k14s/ytt/releases/download/v0.19.0/ytt-darwin-amd64"
  sha256 "b64726d2ad5cb6edd31f4614f3e8bdb07bf6238466cd73a5104bc868afd04b70"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
