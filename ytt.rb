class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.27.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.27.0/ytt-darwin-amd64"
    sha256 "96cc4cd6131849964feebf0b82ed4302453af015a6b0edfb29a3af672ad6715d"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.27.0/ytt-linux-amd64"
    sha256 "addd3f27dbffca09a8c7e7610e48dc53d127b08a91eb2b1097544327a6629a8c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
