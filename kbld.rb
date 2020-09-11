class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.25.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.25.0/kbld-darwin-amd64"
    sha256 "6416225ed6b66b4aad7ff3637c5bbd0930a8e2c4644b3cd4218eb40923586813"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.25.0/kbld-linux-amd64"
    sha256 "e998d54944d3b0915d4c78c3fa604163c89b9951ac1dcbdc380075cfd5aead29"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
