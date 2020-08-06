class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.30.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.30.0/ytt-darwin-amd64"
    sha256 "a1a56c3292e355b9891b2c4ce7525d78f0e1ffd8630b856d300e9a7f383e707c"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.30.0/ytt-linux-amd64"
    sha256 "456e58c70aef5cd4946d29ed106c2b2acbb4d0d5e99129e526ecb4a859a36145"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
