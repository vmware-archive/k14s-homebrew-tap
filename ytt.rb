class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.28.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.28.0/ytt-darwin-amd64"
    sha256 "be16d964964d17b463984d72ed2ec62b691b675441b38ab3ed6ea97f3fc73645"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.28.0/ytt-linux-amd64"
    sha256 "52c36853999a378f21f9cf93a443e4d0e405965c3b7d2b8e499ed5fd8d6873ab"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
