class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.3.0"
  url "https://github.com/k14s/ytt/releases/download/v0.3.0/ytt-darwin-amd64"
  sha256 "af316b851261a7f0e5e93c111e7a466ccbc3100654c4f868e9b72af26269f2a4"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
