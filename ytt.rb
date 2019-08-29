class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.20.0"
  url "https://github.com/k14s/ytt/releases/download/v0.20.0/ytt-darwin-amd64"
  sha256 "569191402672a42c5919feb1caad5a13fb41c01b2d849467211d32f66fd7d426"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
