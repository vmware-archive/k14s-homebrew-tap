class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.8.0"
  url "https://github.com/k14s/ytt/releases/download/v0.8.0/ytt-darwin-amd64"
  sha256 "15fc83ce80eac8d594495c768972492fc5b977cb71ee2d4429788e9e893d47ea"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
