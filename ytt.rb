class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.25.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.25.0/ytt-darwin-amd64"
    sha256 "84a5aa9a9d5c3b67f21136542ecb73aa2c809298094fea21edffb4d2a0cb2f0d"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.25.0/ytt-linux-amd64"
    sha256 "2ccd2c74fea87748515ed3fd74cd45c31f91472fabadf42e6a958f52312e3b47"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
