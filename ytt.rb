class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.27.1"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.27.1/ytt-darwin-amd64"
    sha256 "f1c86e48452e9e2be8ffa9ad0fb53bfcf431fd70821f9f261418a72844163d66"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.27.1/ytt-linux-amd64"
    sha256 "b53674a21d99576b8d69483113e1ec73d9a3ed7381170a421c9afcf8aa551f15"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
