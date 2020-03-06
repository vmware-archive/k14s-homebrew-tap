class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.26.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.26.0/ytt-darwin-amd64"
    sha256 "9275cd3033ec0276d0428cb73d4b5de87720491fc3261a1183a14d9344d8bfc6"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.26.0/ytt-linux-amd64"
    sha256 "ea740f72a1825c00eabf83bfd6cb366adf4b2486992603d6850fac8487e92d8f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
