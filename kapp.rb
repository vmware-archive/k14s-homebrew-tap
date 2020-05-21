class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.27.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.27.0/kapp-darwin-amd64"
    sha256 "4d7c81ddab0fe336db4bb52986e5550d84d3eb180a8175b14d06799401f6178c"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.27.0/kapp-linux-amd64"
    sha256 "01487d351bd1e0aac8961ab28a27bd3cb7239b587154e2bb4a10a2bdafa2b9bb"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
