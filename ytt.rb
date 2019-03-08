class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.1.0"
  url "https://github.com/get-ytt/ytt/releases/download/v0.1.0/ytt-darwin-amd64"
  sha256 "e771415781af72ca2dc8288f5a2d9bf617fe6a81fc3a95af6c67fa8352c0ca73"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
