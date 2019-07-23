class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.16.0"
  url "https://github.com/k14s/ytt/releases/download/v0.16.0/ytt-darwin-amd64"
  sha256 "e6345524ca9229d42828a2cd700557ced1d61f00655a09c9e2f1535c49dfd52b"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
